//> using scala "3.5.1"
//> using option -deprecation -feature -unchecked -Xfatal-warnings -no-indent -Xkind-projector:underscores
//> using dep "org.scala-lang.modules::scala-parser-combinators:2.4.0"
//> using dep "org.typelevel::cats-effect:3.5.4"
//> using dep "org.typelevel::mouse:1.3.2"
//> using dep "co.fs2::fs2-core:3.11.0"
//> using dep "co.fs2::fs2-io:3.11.0"

import fs2.*
import fs2.io.file.*

import cats.*
import cats.data.*
import cats.effect.*
import cats.syntax.all.*
import mouse.all.*

import scala.util.chaining.*

// MARK: Configurations

val convertTarget = ConvertTarget.All
val targetDir     = "Asset/data/asset/functions/mob"
val debug         = true

// MARK: Types

enum ConvertTarget {
  case Specific(names: List[String])
  case All
}

enum Setting {
  case Group(description: String, settings: List[(String, Setting)])
  case Literal(description: String)
}

object PipeExtra {
  final class StatefulPipePartiallyApplied[F[_]] {
    def apply[I, O, S](initial: S)(emitOutputAndUpdateState: (S, I) => Pull[F, O, S]): Pipe[F, I, O] = { stream =>
      stream.pull.uncons1
        .flatMap {
          case None                   => Pull.pure(initial)
          case Some((nextData, rest)) => emitOutputAndUpdateState(initial, nextData).flatMap { newState =>
              statefulPipe(newState)(emitOutputAndUpdateState)(rest).pull.echo
            }
        }
        .void
        .stream
    }
  }

  def statefulPipe[F[_]] = new StatefulPipePartiallyApplied[F]
}

// MARK: Extensions
extension (optT: OptionT.type) {
  def exitWhenF[F[_]: Monad](cond: Boolean)(f: => F[Unit]): OptionT[F, Unit] = if cond then OptionT.liftF(f) >> OptionT.none else OptionT.some(())
}

extension [F[_], A](f: F[A]) {
  def eval: Stream[F, A] = Stream.eval(f)
}

extension (txt: text.type) {
  def processLines[F[_]: Async]: Pipe[F, String, String] = {
    val leaveSingleLineSepAtTheEnd: Pipe[F, String, String] = {
      val dropWhileRightLineSeparators = PipeExtra.statefulPipe[F](Chunk.empty[String]) { (bufferedLineSeps, line: String) =>
        val lines = bufferedLineSeps ++ Chunk(line)
        if (line == Files.forAsync[F].lineSeparator) Pull.pure(lines) else Pull.output(lines).as(Chunk.empty)
      }

      dropWhileRightLineSeparators andThen (_.append(Stream.emit(Files.forAsync[F].lineSeparator)))
    }

    in =>
      in.pull.uncons.flatMap {
        case Some((next, rest)) => Stream
            .chunk(next)
            .append(rest)
            .intersperse(Files.forAsync[F].lineSeparator)
            .filter(_.nonEmpty)
            .through(leaveSingleLineSepAtTheEnd)
            .pull
            .echo
        case None               => Pull.done
      }.stream
  }
}

extension [F[_], A](s: Stream[F, A]) {
  def patch[A2 >: A](from: Long, other: Stream[F, A2], replaced: Long): Stream[F, A2] = {
    s.zipWithIndex.flatMap {
      case (_, i) if i == from                       => other
      case (_, i) if from < i && i < from + replaced => Stream.empty
      case (a, _)                                    => Stream.emit(a)
    }
  }
}

extension [F[_]](files: Files[F]) {
  def shallowWalk(dir: Path): Stream[F, Path]                                        = files.walk(dir, WalkOptions.Default.withMaxDepth(1)).drop(1)
  def readAllLines(path: Path, appendFlags: Option[Flags] = None): Stream[F, String] =
    files.readAll(path, 64 * 1024, appendFlags.fold(Flags.Read)(_.addIfAbsent(Flag.Read))).through(text.utf8.decode).through(text.lines)

  def modifyLines(path: Path)(f: Pipe[F, String, String])(using Async[F]): F[Unit] = {
    Files.forAsync[F].open(path, Flags(Flag.Read, Flag.Write)).use { fh =>
      val program = fh
        .writeAll() {
          fh.readAll()
            .through(text.utf8.decode)
            .through(text.lines)
            .through(f)
            .through(text.processLines)
            .through(text.utf8.encode)
        }
        .compile
        .onlyOrError
      program.flatMap(c => fh.truncate(c.offset))
    }
  }
}

extension [F[_]](fileHandle: FileHandle[F]) {
  def readAll(size: Int = 1024 * 64): Stream[F, Byte] = ReadCursor(fileHandle, 0L).readAll(size).void.stream

  def writeAll()(stream: Stream[F, Byte]): Stream[F, WriteCursor[F]] = WriteCursor(fileHandle, 0L).writeAll(stream).flatMap(Pull.output1).stream
}

extension [F[_]: Async](async: Async[F]) {
  def printInfo(level: Int)(any: Any*): F[Unit] = for {
    formattedTime <- Async[F].delay(java.time.LocalTime.now())
    formatter = java.time.format.DateTimeFormatter.ofPattern("HH:mm:ss.SSS")
    _ <- async.delay(println(s"[INFO]  [${formattedTime.format(formatter)}]: ${"  ".repeat(level)}${any.mkString(" ")}"))
  } yield ()
  def printInfo(any: Any*): F[Unit]             = printInfo(1)(any*)

  def printDebug(level: Int)(any: Any*): F[Unit] = async.whenA(debug)(for {
    formattedTime <- Async[F].delay(java.time.LocalTime.now())
    formatter = java.time.format.DateTimeFormatter.ofPattern("HH:mm:ss.SSS")
    _ <- async.delay(println(s"[DEBUG] [${formattedTime.format(formatter)}]: ${"  ".repeat(level)}${any.mkString(" ")}"))
  } yield ())
  def printDebug(any: Any*): F[Unit]             = printDebug(1)(any*)
}

val TRIGGERS              = List("attack", "death", "hurt", "remove", "summon", "tick", "init")
val REGISTER_DESCRIPTIONS = List[(String, Setting)](
  "ID"                -> Setting.Literal("ID (int)"),
  "Type"              -> Setting.Literal("Type (string) Wikiを参照"),
  "Interferable"      -> Setting.Literal("干渉可能か否か (boolean)"),
  "Name"              -> Setting.Literal("名前 (TextComponentString) (オプション)"),
  "Weapon"            -> Setting.Group(
    "武器",
    List(
      "Mainhand" -> Setting.Literal("メインハンド (Compound(Item)) (オプション)"),
      "Offhand"  -> Setting.Literal("オフハンド (Compound(Item)) (オプション)")
    )
  ),
  "WeaponDropChances" -> Setting.Literal("武器ドロップ率 ([float, float]) (オプション)"),
  "Armor"             -> Setting.Group(
    "防具",
    List(
      "Head"  -> Setting.Literal("頭 (Compound(Item)) (オプション)"),
      "Chest" -> Setting.Literal("胴 (Compound(Item)) (オプション)"),
      "Legs"  -> Setting.Literal("脚 (Compound(Item)) (オプション)"),
      "Feet"  -> Setting.Literal("足 (Compound(Item)) (オプション)")
    )
  ),
  "ArmorDropChances"  -> Setting.Literal("防具ドロップ率 ([float, float]) (オプション)"),
  "Health"            -> Setting.Literal("体力 (double) (オプション)"),
  "AttackDamage"      -> Setting.Literal("攻撃力 (double) (オプション)"),
  "Defense"           -> Setting.Literal("防御力 (double) (オプション) // 被ダメージがある程度大きい場合1ptにつき0.8%カット、小さい場合1ptにつき約4%カット 20pt以上は頭打ち"),
  "SpecialDefense"    -> Setting.Literal("特殊防御力 (double) (オプション) // 4pointにつきダメージを大きく減らす"),
  "Speed"             -> Setting.Literal("移動速度 (double) (オプション)"),
  "FollowRange"       -> Setting.Literal("索敵範囲 (double) (オプション)"),
  "KnockBackResist"   -> Setting.Literal("ノックバック耐性 (double) (オプション)"),
  "Resist"            -> Setting.Group(
    "属性倍率 // 1.0fで100% 最低でも25%は軽減されずに入る",
    List(
      "Physical" -> Setting.Literal("物理倍率 (float) (オプション)"),
      "Magic"    -> Setting.Literal("魔法倍率 (float) (オプション)"),
      "Fire"     -> Setting.Literal("火倍率 (float) (オプション)"),
      "Water"    -> Setting.Literal("水倍率 (float) (オプション)"),
      "Thunder"  -> Setting.Literal("雷倍率 (float) (オプション)")
    )
  )
)

// MARK: Main
def main[F[_]: Async]: Stream[F, Unit] = for {
  cwd <- Files.forAsync[F].currentWorkingDirectory.eval
  _   <- Async[F].printInfo(s"Current working directory: $cwd").eval

  asset <- convertTarget match {
    case ConvertTarget.Specific(names) => Stream.emits(names.map(cwd / targetDir / _))
    case ConvertTarget.All             => Files.forAsync[F].shallowWalk(cwd / targetDir)
  }
  if !asset.fileName.toString.startsWith(".")
  if asset.fileName.toString != "alias"

  isDirectory <- Files.forAsync[F].isDirectory(asset).eval
  if isDirectory

  assetName = asset.fileName

  assetIdOpt = """(\d+)(?:\.|_)""".r.findFirstMatchIn(assetName.toString).map(_.group(1).toInt)
  _ <- Async[F].unlessA(assetIdOpt.isDefined)(Async[F].printInfo(s"Can't find asset id: $assetName")).eval
  if assetIdOpt.isDefined
  assetId = assetIdOpt.get

  isAssetV2 <- Files.forAsync[F].exists(asset / "_" / "register.mcfunction").eval
  _         <- Async[F].printInfo(s"Converting: $assetName (${if isAssetV2 then "v2" else "v1"})").eval

  aliasDir = cwd / targetDir / "alias" / assetId.toString

  _ <- Files.forAsync[F].createDirectories(aliasDir).eval

  _ <- Stream.eval {
    type OF[A] = OptionT[F, A]
    if (isAssetV2) {
      Files
        .forAsync[F]
        .shallowWalk(asset / "_")
        .foreach { trigger =>
          val triggerName = trigger.fileName.toString.dropRight(".mcfunction".length)

          val triggerRP = s"asset:mob/$assetName/_/$triggerName"

          val nTrigger   = aliasDir / s"$triggerName.mcfunction"
          val nTriggerRP = s"asset:mob/alias/$assetId/$triggerName"

          if (triggerName == "register") {
            val nMain   = asset / "register.mcfunction"
            val nMainRP = s"asset:mob/$assetName/register"
            for {
              _ <- Async[F].printDebug(2)(s"Converting: $assetName/register")
              _ <- Stream(s"#> $nTriggerRP", s"# @within asset_manager:mob/register/register.m", "", s"function asset:mob/$assetName/register")
                .covary[F]
                .through(text.processLines)
                .through(Files.forAsync[F].writeUtf8(nTrigger, Flags(Flag.CreateNew, Flag.Write)))
                .compile
                .drain
            } yield ()
          }

          val (nMain, nMainRP) = {
            if (triggerName == "register") {
              (asset / "register.mcfunction", s"asset:mob/$assetName/$triggerName")
            } else {
              (asset / triggerName / ".mcfunction", s"asset:mob/$assetName/$triggerName/")
            }
          }

          for {
            _ <- Async[F].printDebug(2)(s"Converting: $assetName/$triggerName")
            // asset_manager:mob/<assetId>.<name>/_/<trigger> -> asset:mob/alias/<assetId>/<trigger>
            _ <- Files.forAsync[F].deleteIfExists(trigger)
            _ <- Stream(s"#> $nTriggerRP", s"# @within asset_manager:mob/$triggerName/$triggerName.m", "", s"function $nMainRP")
              .covary[F]
              .through(text.processLines)
              .through(Files.forAsync[F].writeUtf8(nTrigger, Flags(Flag.CreateNew, Flag.Write)))
              .compile
              .drain

            _ <- Files.forAsync[F].modifyLines(nMain)(_.map(_.replace(triggerRP, nTriggerRP)))
          } yield ()
        }
        .compile
        .drain
    } else {
      val triggerMainRenames = TRIGGERS.map { t => t -> (s"asset:mob/$assetName/$t/2.$t" -> s"asset:mob/$assetName/$t/") }.toMap
      def replaceTriggerMain(content: String): String = triggerMainRenames.values.foldLeft(content) { case (s, (p, n)) => s.replace(p, n) }
      for {
        _ <- Files
          .forAsync[F]
          .shallowWalk(asset)
          .foreach { children =>
            val program = children match {
              case triggerDir if TRIGGERS.contains(triggerDir.fileName.toString) =>
                val triggerName = triggerDir.fileName.toString

                val trigger    = triggerDir / "1.trigger.mcfunction"
                val triggerRP  = s"asset:mob/$assetName/$triggerName/1.trigger"
                val nTrigger   = aliasDir / s"$triggerName.mcfunction"
                val nTriggerRP = s"asset:mob/alias/$assetId/$triggerName"

                val main    = triggerDir / s"2.$triggerName.mcfunction"
                val mainRP  = triggerMainRenames(triggerName)._1
                val nMain   = asset / triggerName / ".mcfunction"
                val nMainRP = triggerMainRenames(triggerName)._2

                def replaceAll(content: String): String = content.replace(triggerRP, nTriggerRP).pipe(replaceTriggerMain)

                for {
                  _          <- Async[OF].printDebug(2)(s"Converting: $assetName/$triggerName")
                  isEmptyDir <- Files.forAsync[OF].shallowWalk(triggerDir).compile.toList.map(_.isEmpty)
                  _          <- OptionT.exitWhenF(isEmptyDir)(Async[F].printDebug(3)(s"Empty directory: $assetName/$triggerName"))

                  existsTrigger <- Files.forAsync[OF].exists(trigger)
                  _             <- OptionT.exitWhenF(!existsTrigger)(Async[F].printDebug(3)(s"Trigger not found: $assetName/$triggerName"))

                  // asset_manager:mob/<assetId>.<name>/<trigger>/1.trigger -> asset:mob/alias/<assetId>/<trigger>
                  _ <- Files.forAsync[OF].deleteIfExists(trigger)
                  _ <- Stream(s"#> $nTriggerRP", s"# @within asset_manager:mob/$triggerName/$triggerName.m", "", s"function $nMainRP")
                    .covary[OF]
                    .through(text.processLines)
                    .through(Files.forAsync[OF].writeUtf8(nTrigger, Flags(Flag.CreateNew, Flag.Write)))
                    .compile
                    .drain

                  // asset_manager:mob/<assetId>.<name>/<trigger>/2.main -> asset_manager:mob/<assetId>.<name>/<trigger>/.mcfunction
                  _ <- Files
                    .forAsync[OF]
                    .readAllLines(main, Some(Flags(Flag.DeleteOnClose)))
                    .map(replaceAll)
                    .through(text.processLines)
                    .through(Files.forAsync[OF].writeUtf8(nMain, Flags(Flag.CreateNew, Flag.Write)))
                    .compile
                    .drain

                  // Replace all resource path in the trigger directory
                  _ <- Files
                    .forAsync[OF]
                    .walk(triggerDir)
                    .evalFilter(Files.forAsync[OF].isRegularFile)
                    .evalMap(Files.forAsync[OF].modifyLines(_)(_.map(replaceAll)))
                    .compile
                    .drain
                } yield ()
              // Replace all resource path in the trigger
              case otherDir                                                      => Files
                  .forAsync[OF]
                  .walk(otherDir)
                  .evalFilter(Files.forAsync[OF].isRegularFile)
                  .evalMap(p => Files.forAsync[OF].modifyLines(p)(_.map(replaceTriggerMain)))
                  .compile
                  .drain
            }
            program.value.void
          }
          .compile
          .drain

        types <- Files
          .forAsync[F]
          .readAllLines(asset / "summon" / ".mcfunction")
          .map(_.trim)
          .filter(_.nonEmpty)
          .filterNot(_.startsWith("#"))
          .compile
          .toList
        _     <- types
          .groupBy {
            case s if s.startsWith("summon ") && s.contains("MobInit") => "summon"
            case s if s.startsWith("data modify storage asset:mob")    => "register"
            case s if !s.contains("function asset:mob/common/summon")  => "init"
            case _                                                     => "void"
          }
          .toList
          .map((k, v) => k -> Chunk.from(v))
          .traverse_ {
            case ("summon", lines) => for {
                _ <- Async[F].printDebug(2)(s"Converting: $assetName/summon")
                _ <- Async[F].unlessA(lines.size == 1) {
                  Async[F].printInfo(s"Illegal summon lines: $assetName")
                }
                _ <- Stream
                  .chunk(Chunk(s"#> ${triggerMainRenames("summon")._2}", s"# @within asset:mob/alias/$assetId/summon", "") ++ lines)
                  .through(text.processLines)
                  .through(Files.forAsync[F].writeUtf8(asset / "summon" / ".mcfunction", Flags(Flag.Truncate, Flag.Write)))
                  .compile
                  .drain
              } yield ()

            case ("register", lines) if lines.nonEmpty =>
              for {
                _ <- Async[F].printDebug(2)(s"Converting: $assetName/register")
                _ <- Stream(
                  s"#> asset:mob/alias/$assetId/register",
                  s"# @within asset_manager:mob/register/register.m",
                  "",
                  s"function asset:mob/$assetName/register"
                )
                  .through(text.processLines)
                  .through(Files.forAsync[F].writeUtf8(aliasDir / "register.mcfunction", Flags(Flag.Create, Flag.Truncate, Flag.Write)))
                  .compile
                  .drain

                _ <- Stream
                  .chunk(Chunk(s"#> asset:mob/$assetName/register", s"# @within asset:mob/alias/$assetId/register", ""))
                  .append {
                    val disabledDefinition = (key: String) => s"# data modify storage asset:mob $key set value"
                    def settingToLines(name: String, setting: Setting): List[String] = setting match {
                      case Setting.Literal(description)         => List(
                          s"# $description",
                          (" " * 4) + lines.find(_.contains(name)).getOrElse(disabledDefinition(name))
                        )
                      case Setting.Group(description, settings) =>
                        List(s"# $description") ++ settings.flatMap((n, s) => settingToLines(s"$name.$n", s)).map(" " * 4 + _)
                    }

                    Stream.emits(REGISTER_DESCRIPTIONS.flatMap((n, s) => settingToLines(n, s)))
                  }
                  .through(text.processLines)
                  .through(Files.forAsync[F].writeUtf8(asset / "register.mcfunction", Flags(Flag.Create, Flag.Write)))
                  .compile
                  .drain
              } yield ()

            case ("init", lines) if lines.nonEmpty =>
              for {

                _ <- Async[F].printDebug(2)(s"Converting: $assetName/init")
                _ <- Stream(
                  s"#> asset:mob/alias/$assetId/init",
                  s"# @within asset_manager:mob/init/init.m",
                  "",
                  s"function ${triggerMainRenames("init")._2}"
                )
                  .through(text.processLines)
                  .through(Files.forAsync[F].writeUtf8(aliasDir / "init.mcfunction", Flags(Flag.Create, Flag.Truncate, Flag.Write)))
                  .compile
                  .drain

                _ <- Files.forAsync[F].createDirectories(asset / "init")
                _ <- Stream
                  .chunk(Chunk(s"#> ${triggerMainRenames("init")._2}", s"# @within asset:mob/alias/$assetId/init", "") ++ lines)
                  .through(text.processLines)
                  .through(Files.forAsync[F].writeUtf8(asset / "init" / ".mcfunction", Flags(Flag.Create, Flag.Write)))
                  .compile
                  .drain
              } yield ()

            case ("void", _) => Async[F].unit
          }
      } yield ()
    }
  }

  _ <- Stream.eval(Async[F].printInfo(s"Converted: $assetName"))
} yield ()

import cats.effect.unsafe.implicits.global
main[IO].compile.drain.unsafeRunSync()

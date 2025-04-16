import scala.reflect.TypeTest
import java.util.Locale
import java.text.*

import scala.util.chaining.*
import scala.util.matching.Regex
import scala.util.parsing.combinator.RegexParsers

import cats.*
import cats.data.*
import cats.effect.*
import cats.syntax.all.*

import fs2.data.csv.*
import fs2.data.csv.generic.semiauto.*
import fs2.io.file.*
import fs2.text

// MARK: Extension definitions
extension [A](value: A) {
  def downcastOrNone[B](using tt: TypeTest[A, B]): Option[A & B] = value match {
    case tt(b) => Some(b)
    case _     => None
  }
}

extension (obj: EitherT.type) {
  def exitWhenA[F[_]: Applicative](cond: Boolean)[A](exitValue: => A): EitherT[F, A, Unit] = EitherT.fromEither(Either.cond(cond, (), exitValue))
}

extension [T <: Tuple](programs: T) {
  def parMapTuple[F[_]: Applicative, Z](f: Tuple.InverseMap[T, F] => Z)(using
    Tuple.Map[Tuple.InverseMap[T, F], F] =:= T
  ): F[Z] = {
    import Applicative.*

    val typeErasedPrograms: List[Any] = programs.toList
    val program: F[List[Any]]         = typeErasedPrograms.reverse.foldLeft(List.empty[Any].pure)((acc, program) =>
      acc.product(program.asInstanceOf[F[Any]]).map { case (list, x) => x :: list }
    )

    program.map(l => f(Tuple.fromArray(l.toArray).asInstanceOf[Tuple.InverseMap[T, F]]))
  }
}

// MARK: NBTTag Type definitions
trait NBTTagListOps(value: Option[NBTNel]) {
  def toList: List[NBTTag] = value.map(_.values.toList).orEmpty
}

enum NBTTag   {
  case NBTTagCompound(value: Map[String, NBTTag])
  case NBTTagByte(value: Byte)
  case NBTTagShort(value: Short)
  case NBTTagInt(value: Int)
  case NBTTagLong(value: Long)
  case NBTTagFloat(value: Float)
  case NBTTagDouble(value: Double)
  case NBTTagString(value: String)
  case NBTTagByteArray(value: Vector[NBTTagByte])
  case NBTTagIntArray(value: Vector[NBTTagInt])
  case NBTTagLongArray(value: Vector[NBTTagLong])
  case NBTTagList(value: Option[NBTNel]) extends NBTTag with NBTTagListOps(value)

  def toSNBT: String = this match {
    case NBTTagCompound(value)  => value
        .map { case (k, v) => s"${quote(k, lenient = true)}:${v.toSNBT}" }
        .mkString("{", ",", "}")
    case NBTTagByte(value)      => s"${value}b"
    case NBTTagShort(value)     => s"${value}s"
    case NBTTagInt(value)       => value.toString
    case NBTTagLong(value)      => s"${value}L"
    case NBTTagFloat(value)     => decimalFormat(value, "f")
    case NBTTagDouble(value)    => decimalFormat(value, "d")
    case NBTTagString(value)    => quote(value)
    case NBTTagByteArray(value) => listToString(value, "B")
    case NBTTagIntArray(value)  => listToString(value, "I")
    case NBTTagLongArray(value) => listToString(value, "L")
    case NBTTagList(value)      => listToString(value.map(_.values.toList).orEmpty)
  }

  protected def quote(str: String, lenient: true): String = {
    val needsQuote = List(" ", "{", "}", "[", "]", ":", ",", "\"", "'", "=")
    if (str.exists(needsQuote.contains)) quote(str) else str
  }

  protected def quote(str: String): String = str
    .replace("\\", "\\\\")
    .replace("\"", "\\\"")
    .pipe(s => s"\"$s\"")

  protected def decimalFormat(number: Number, suffix: String): String                = {
    DecimalFormat("0", DecimalFormatSymbols.getInstance(Locale.ENGLISH))
      .tap(_.setMaximumFractionDigits(340))
      .pipe(_.format(number) + suffix)
  }
  protected def listToString[A <: NBTTag](list: Seq[A], prefix: String = ""): String = {
    list
      .map(_.toSNBT)
      .mkString("[" + Option(prefix).filter(_.nonEmpty).map(_ + ";").orEmpty, ",", "]")
  }
}
object NBTTag {
  def listFrom(): NBTTagList             = NBTTagList(None)
  def listFrom(list: NBTNel): NBTTagList = NBTTagList(Some(list))
}

sealed trait NBTNel {
  type Elems <: NBTTag
  val values: NonEmptyVector[Elems]
}
object NBTNel       {
  import NBTTag.*
  case class Compound(override val values: NonEmptyVector[NBTTagCompound])   extends NBTNel { type Elems = NBTTagCompound  }
  case class Byte(override val values: NonEmptyVector[NBTTagByte])           extends NBTNel { type Elems = NBTTagByte      }
  case class Short(override val values: NonEmptyVector[NBTTagShort])         extends NBTNel { type Elems = NBTTagShort     }
  case class Int(override val values: NonEmptyVector[NBTTagInt])             extends NBTNel { type Elems = NBTTagInt       }
  case class Long(override val values: NonEmptyVector[NBTTagLong])           extends NBTNel { type Elems = NBTTagLong      }
  case class Float(override val values: NonEmptyVector[NBTTagFloat])         extends NBTNel { type Elems = NBTTagFloat     }
  case class Double(override val values: NonEmptyVector[NBTTagDouble])       extends NBTNel { type Elems = NBTTagDouble    }
  case class String(override val values: NonEmptyVector[NBTTagString])       extends NBTNel { type Elems = NBTTagString    }
  case class List(override val values: NonEmptyVector[NBTTagList])           extends NBTNel { type Elems = NBTTagList      }
  case class ByteArray(override val values: NonEmptyVector[NBTTagByteArray]) extends NBTNel { type Elems = NBTTagByteArray }
  case class IntArray(override val values: NonEmptyVector[NBTTagIntArray])   extends NBTNel { type Elems = NBTTagIntArray  }
  case class LongArray(override val values: NonEmptyVector[NBTTagLongArray]) extends NBTNel { type Elems = NBTTagLongArray }
}

// MARK: NBTTag Parser definitions
object NBTTagParser {
  import NBTTag.*

  def parseCompound(input: String): Either[String, NBTTagCompound]   = parse(_.compound)(input)
  def parseBoolean(input: String): Either[String, Boolean]           = parseByte(input).map(_.value != 0)
  def parseByte(input: String): Either[String, NBTTagByte]           = parse(_.byte)(input)
  def parseShort(input: String): Either[String, NBTTagShort]         = parse(_.short)(input)
  def parseInt(input: String): Either[String, NBTTagInt]             = parse(_.int)(input)
  def parseLong(input: String): Either[String, NBTTagLong]           = parse(_.long)(input)
  def parseFloat(input: String): Either[String, NBTTagFloat]         = parse(_.float)(input)
  def parseDouble(input: String): Either[String, NBTTagDouble]       = parse(_.double)(input)
  def parseString(input: String): Either[String, NBTTagString]       = parse(_.string)(input)
  def parseByteArray(input: String): Either[String, NBTTagByteArray] = parse(_.byteArray)(input)
  def parseIntArray(input: String): Either[String, NBTTagIntArray]   = parse(_.intArray)(input)
  def parseLongArray(input: String): Either[String, NBTTagLongArray] = parse(_.longArray)(input)
  def parseList(input: String): Either[String, NBTTagList]           = parse(_.list)(input)
  def parseAny(input: String): Either[String, NBTTag]                = parse(_.any)(input)

  private def parse[A](parserSelector: (a: NBTTagParser) => a.Parser[A])(input: String): Either[String, A] = {
    val parser = new NBTTagParser()
    parser.parse(parserSelector(parser), input)
  }
}

class NBTTagParser extends RegexParsers {
  import NBTTag.*
  override val whiteSpace: Regex = """\s*""".r

  override def skipWhitespace: Boolean = false

  private def parse[A](parser: Parser[A], input: String): Either[String, A] = {
    parseAll(parser, input) match {
      case Success(res, _) => Right(res)
      case Failure(err, _) => Left(s"$err (input: $input)")
      case Error(err, _)   => Left(s"$err (input: $input)")
    }
  }

  protected def integer: Parser[Int] = "-?[0-9]".r ^^ (_.toInt)

  protected def unquotedString: Parser[String] = """[a-zA-Z0-9_\-.+]+""".r

  protected def looseUnquotedString: Parser[String] = """[^'". \[\]\{\}]+""".r

  protected def quotedString(allowEmpty: Boolean = false): Parser[String] = {
    val f: ((=> Parser[String]) => Parser[List[String]]) = if (allowEmpty) rep else rep1
    for {
      quote <- "'" | "\""
      str   <- f(s"[^$quote\\\\]".r | s"\\$quote" | "\\\\")
      _     <- quote
    } yield s"\\\\(\\\\|$quote)".r.replaceAllIn(str.mkString, s => Regex.quoteReplacement(s.group(1)))
  }

  protected def compound: Parser[NBTTagCompound] = for {
    _           <- "{"
    keyAndValue <- repsep(whiteSpace ~> compoundPair <~ whiteSpace, ",")
    _           <- "}"
  } yield NBTTagCompound(keyAndValue.toMap)

  private def compoundPair: Parser[(String, NBTTag)] = for {
    key   <- quotedString() | unquotedString
    _     <- whiteSpace ~ ":" ~ whiteSpace
    value <- any
  } yield (key, value)

  private def any: Parser[NBTTag] = compound | byte | short | long | float | double | int | string | byteArray | intArray | longArray | list

  private def string: Parser[NBTTagString] = (quotedString(true) | unquotedString) ^^ NBTTagString.apply

  private def byte: Parser[NBTTagByte] =
    (("""-?\d+""".r <~ ("b" | "B")) | ("false" ^^ (_ => "0")) | ("true" ^^ (_ => "1"))) ^^ (s => NBTTagByte(s.toByte))

  private def short: Parser[NBTTagShort] = """-?\d+""".r <~ ("s" | "S") ^^ (s => NBTTagShort(s.toShort))

  private def int: Parser[NBTTagInt] = """-?\d+""".r ^^ (s => NBTTagInt(s.toInt))

  private def long: Parser[NBTTagLong] = """-?\d+""".r <~ ("l" | "L") ^^ (s => NBTTagLong(s.toLong))

  private def float: Parser[NBTTagFloat] = """-?(\d*\.)?\d+""".r <~ ("f" | "F") ^^ (s => NBTTagFloat(s.toFloat))

  private def double: Parser[NBTTagDouble] =
    (
      ("""-?(\d*\.)?\d+""".r <~ ("d" | "D"))
        | """-?\d*\.\d+""".r
    ) ^^ (s => NBTTagDouble(s.toDouble))

  private def byteArray: Parser[NBTTagByteArray] = toListParser(byte, "B") ^^ (l => NBTTagByteArray(l.toVector))

  private def intArray: Parser[NBTTagIntArray] = toListParser(int, "I") ^^ (l => NBTTagIntArray(l.toVector))

  private def longArray: Parser[NBTTagLongArray] = toListParser(long, "L") ^^ (l => NBTTagLongArray(l.toVector))

  private def list: Parser[NBTTagList] = {
    emptyList | compoundList | byteList | shortList | longList | floatList | intList | doubleList | stringList | nestedList
  }

  private def emptyList: Parser[NBTTagList] = "[]" ^^ (_ => NBTTag.listFrom())

  private def stringList: Parser[NBTTagList] = toListParser(string) ^^ (a => NBTTag.listFrom(NBTNel.String(a)))

  private def byteList: Parser[NBTTagList] = toListParser(byte) ^^ (a => NBTTag.listFrom(NBTNel.Byte(a)))

  private def shortList: Parser[NBTTagList] = toListParser(short) ^^ (a => NBTTag.listFrom(NBTNel.Short(a)))

  private def intList: Parser[NBTTagList] = toListParser(int) ^^ (a => NBTTag.listFrom(NBTNel.Int(a)))

  private def longList: Parser[NBTTagList] = toListParser(long) ^^ (a => NBTTag.listFrom(NBTNel.Long(a)))

  private def floatList: Parser[NBTTagList] = toListParser(float) ^^ (a => NBTTag.listFrom(NBTNel.Float(a)))

  private def doubleList: Parser[NBTTagList] = toListParser(double) ^^ (a => NBTTag.listFrom(NBTNel.Double(a)))

  private def compoundList: Parser[NBTTagList] = toListParser(compound) ^^ (a => NBTTag.listFrom(NBTNel.Compound(a)))

  private def nestedList: Parser[NBTTagList] = toListParser(list) ^^ (a => NBTTag.listFrom(NBTNel.List(a)))

  private def toListParser[A](elemParser: Parser[A], header: String): Parser[List[A]] =
    s"[$header;" ~> repsep(whiteSpace ~> elemParser <~ whiteSpace, ",") <~ "]"

  private def toListParser[A](elemParser: Parser[A]): Parser[NonEmptyVector[A]] =
    "[" ~> rep1sep(whiteSpace ~> elemParser <~ whiteSpace, ",") <~ "]" ^^ (_.toVector) ^^ NonEmptyVector.fromVectorUnsafe
}

// MARK: TranslateMap Type definitions

import TranslateMapPackage.*
object TranslateMapPackage {
  opaque type TranslateMap = Map[String, String]

  extension (map: TranslateMap) {
    def apply(key: String): String = map.getOrElse(key, key)
  }

  object TranslateMap {
    def fetchTranslateMap(): IO[TranslateMap] = {
      import sttp.client4.*
      import sttp.client4.httpclient.cats.HttpClientCatsBackend

      HttpClientCatsBackend.resource[IO]().use { backend =>
        val uri     = uri"https://raw.githubusercontent.com/misode/mcmeta/refs/heads/assets-json/assets/minecraft/lang/ja_jp.json"
        val request = basicRequest.get(uri).response(asStringOrFail.map(upickle.default.read[Map[String, String]](_)))

        backend.send(request).map(_.body)
      }
    }
  }
}

// MARK: TextComponent Type definitions
case class TextComponent(resolvedText: String, rawComponent: NonEmptyVector[NBTTag.NBTTagCompound])
object TextComponent {
  import NBTTag.*

  def resolve(components: NonEmptyVector[NBTTagCompound])(using translateMap: TranslateMap): Either[String, String] = {
    val texts = components.traverse {
      case NBTTagCompound(component) =>
        val text      = component.get("text").flatMap(_.downcastOrNone[NBTTagString]).map(_.value)
        val translate = component.get("translate").flatMap(_.downcastOrNone[NBTTagString]).map(_.value)
        val withs     = component
          .get("with")
          .flatMap(_.downcastOrNone[NBTTagList])
          .traverse(_.value.toList.flatMap(_.values.toList).traverse(s => TextComponent.parse(s)))
        val extra     = component
          .get("extra")
          .flatMap(_.downcastOrNone[NBTTagList])
          .traverse(_.value.toList.flatMap(_.values.toList).traverse(s => TextComponent.parse(s)))
          .map(_.map(_.map(CellEncoder[TextComponent].apply).mkString))

        val filledTranslate = withs.map { withs =>
          translate.flatMap { t =>
            val parts = translateMap(t).split("%s")
            if (parts.length == 1) {
              Some(parts.head.mkString)
            } else {
              withs.map { w =>
                parts.zip(w).foldLeft("") { case (acc, (t, c)) => acc + t + CellEncoder[TextComponent].apply(c) }
              }
            }
          }
        }
        (filledTranslate, extra).parMapN { (ft, ex) => text.orEmpty + ft.orEmpty + ex.orEmpty }
    }

    texts.map(_.toList.mkString)
  }

  def parse(input: NBTTag)(using TranslateMap): Either[String, TextComponent] = {
    val rawComponent = input match {
      case value: NBTTagCompound                    => Right(NonEmptyVector.one(value))
      case value: NBTTagString                      => Right(NonEmptyVector.one(NBTTagCompound(Map("text" -> value)): NBTTagCompound))
      case NBTTagList(Some(value: NBTNel.Compound)) => Right(value.values)
      case _                                        => Left("Invalid TextComponent")
    }

    rawComponent.flatMap(rc => resolve(rc).map(TextComponent(_, rc)))
  }

  def parseSNBT(input: String)(using TranslateMap): Either[String, TextComponent] = NBTTagParser.parseAny(input).flatMap(parse)

  def parseStringTC(input: String)(using TranslateMap): Either[String, TextComponent] =
    NBTTagParser.parseString(input).flatMap(s => parseSNBT(s.value))

  given CellEncoder[TextComponent] = _.resolvedText
}

// MARK: Register Type definitions
case class BaseItem(id: String)
object BaseItem {
  def parse(input: String): Either[String, BaseItem] = NBTTagParser.parseString(input).map(_.value).map(BaseItem.apply)

  given CellEncoder[BaseItem] = s => if (s.id.startsWith("minecraft:")) s.id.drop("minecraft:".length) else s.id
}

case class CanUseGods(flora: Boolean, urban: Boolean, nyaptov: Boolean, wiki: Boolean, rumor: Boolean)
object CanUseGods {
  def parse(input: String): Either[String, CanUseGods] = NBTTagParser.parseAny(input).flatMap {
    case NBTTag.NBTTagString("ALL")                     => Right(CanUseGods(true, true, true, true, true))
    case NBTTag.NBTTagList(Some(NBTNel.String(values))) =>
      val elems = values.map(_.value)
      Right(
        CanUseGods(
          elems.contains_("Flora"),
          elems.contains_("Urban"),
          elems.contains_("Nyaptov"),
          elems.contains_("Wi-ki"),
          elems.contains_("Rumor")
        )
      )
    case _                                              => Left("Invalid CanUseGods")
  }

  given CellEncoder[CanUseGods] = {
    case CanUseGods(flora, urban, nyaptov, wiki, rumor) => List(
        Option.when(flora)("フローラ"),
        Option.when(urban)("ウルバン"),
        Option.when(nyaptov)("ニャプトフ"),
        Option.when(wiki)("ウィ＝キ"),
        Option.when(rumor)("ルーモア")
      ).flatten.mkString(", ")
  }
}

case class Lore(components: List[TextComponent])
object Lore {
  def parse(input: String)(using TranslateMap): Either[String, Lore] = NBTTagParser.parseList(input).map(_.value).flatMap {
    case Some(NBTNel.String(value)) => value.traverse(s => TextComponent.parseSNBT(s.value)).map(l => Lore(l.toList))
    case None                       => Right(Lore(Nil))
    case _                          => Left("Invalid Lore")
  }

  given CellEncoder[Lore] = _.components.map(CellEncoder[TextComponent].apply).mkString("\n")
}

enum Trigger   {
  case OnClick, Shot, ItemUse, Passive, OnAttack, OnAttackByMelee, OnAttackByProjectile, OnDamage, OnDamageFromExplode, OnDamageFromBurn,
    OnDamageFromEntity, OnDamageFromMelee, OnDamageFromProjectile, OnKilled, OnKilledByMelee, OnKilledByProjectile, Sneak, Sneak1s, Sneak2s, Sneak3s,
    Sneak4s, Sneak5s, Sneak10s, KeepSneak, KeepSneak1s, KeepSneak2s, KeepSneak3s, KeepSneak4s, KeepSneak5s, KeepSneak10s, Equipping, OnHeal,
    OnReceiveHeal
}
object Trigger {
  def parse(input: String): Either[String, Trigger] = NBTTagParser.parseString(input).map(_.value).flatMap {
    case "onClick"                => Right(OnClick)
    case "shot"                   => Right(Shot)
    case "itemUse"                => Right(ItemUse)
    case "passive"                => Right(Passive)
    case "onAttack"               => Right(OnAttack)
    case "onAttackByMelee"        => Right(OnAttackByMelee)
    case "onAttackByProjectile"   => Right(OnAttackByProjectile)
    case "onDamage"               => Right(OnDamage)
    case "onDamageFromExplode"    => Right(OnDamageFromExplode)
    case "onDamageFromBurn"       => Right(OnDamageFromBurn)
    case "onDamageFromEntity"     => Right(OnDamageFromEntity)
    case "onDamageFromMelee"      => Right(OnDamageFromMelee)
    case "onDamageFromProjectile" => Right(OnDamageFromProjectile)
    case "onKilled"               => Right(OnKilled)
    case "onKilledByMelee"        => Right(OnKilledByMelee)
    case "onKilledByProjectile"   => Right(OnKilledByProjectile)
    case "sneak"                  => Right(Sneak)
    case "sneak1s"                => Right(Sneak1s)
    case "sneak2s"                => Right(Sneak2s)
    case "sneak3s"                => Right(Sneak3s)
    case "sneak4s"                => Right(Sneak4s)
    case "sneak5s"                => Right(Sneak5s)
    case "sneak10s"               => Right(Sneak10s)
    case "keepSneak"              => Right(KeepSneak)
    case "keepSneak1s"            => Right(KeepSneak1s)
    case "keepSneak2s"            => Right(KeepSneak2s)
    case "keepSneak3s"            => Right(KeepSneak3s)
    case "keepSneak4s"            => Right(KeepSneak4s)
    case "keepSneak5s"            => Right(KeepSneak5s)
    case "keepSneak10s"           => Right(KeepSneak10s)
    case "equipping"              => Right(Equipping)
    case "onHeal"                 => Right(OnHeal)
    case "onReceiveHeal"          => Right(OnReceiveHeal)
    case _                        => Left("Invalid Trigger")
  }

  given CellEncoder[Trigger] = _ match {
    case OnClick                => "右クリック"
    case Shot                   => "発射"
    case ItemUse                => "使用"
    case Passive                => "常時"
    case OnAttack               => "攻撃"
    case OnAttackByMelee        => "攻撃 - バニラ近距離"
    case OnAttackByProjectile   => "攻撃 - バニラ遠距離"
    case OnDamage               => "被ダメージ"
    case OnDamageFromExplode    => "被ダメージ - バニラ爆発"
    case OnDamageFromBurn       => "被ダメージ - バニラ炎上"
    case OnDamageFromEntity     => "被攻撃ダメージ"
    case OnDamageFromMelee      => "非攻撃ダメージ - バニラ近距離"
    case OnDamageFromProjectile => "非攻撃ダメージ - バニラ遠距離"
    case OnKilled               => "討伐"
    case OnKilledByMelee        => "討伐 - バニラ近距離"
    case OnKilledByProjectile   => "討伐 - バニラ遠距離"
    case Sneak                  => "スニーク"
    case Sneak1s                => "1 秒間スニーク"
    case Sneak2s                => "2 秒間スニーク"
    case Sneak3s                => "3 秒間スニーク"
    case Sneak4s                => "4 秒間スニーク"
    case Sneak5s                => "5 秒間スニーク"
    case Sneak10s               => "10 秒間スニーク"
    case KeepSneak              => "0 秒以上スニーク"
    case KeepSneak1s            => "1 秒以上スニーク"
    case KeepSneak2s            => "2 秒以上スニーク"
    case KeepSneak3s            => "3 秒以上スニーク"
    case KeepSneak4s            => "4 秒以上スニーク"
    case KeepSneak5s            => "5 秒以上スニーク"
    case KeepSneak10s           => "10 秒以上スニーク"
    case Equipping              => "装備"
    case OnHeal                 => "与回復"
    case OnReceiveHeal          => "被回復"
  }
}

enum Slot   { case Auto, MainHand, OffHand, Head, Chest, Legs, Feet, Hotbar }
object Slot {
  def parse(input: String): Either[String, Slot] = NBTTagParser.parseString(input).map(_.value).flatMap {
    case "auto"     => Right(Auto)
    case "mainhand" => Right(MainHand)
    case "offhand"  => Right(OffHand)
    case "head"     => Right(Head)
    case "chest"    => Right(Chest)
    case "legs"     => Right(Legs)
    case "feet"     => Right(Feet)
    case "hotbar"   => Right(Hotbar)
    case _          => Left("Invalid Slot")
  }

  given CellEncoder[Slot] = _ match {
    case Auto     => "オート (人参棒と飲食物のみ)"
    case MainHand => "メインハンド"
    case OffHand  => "オフハンド"
    case Head     => "頭"
    case Chest    => "胴"
    case Legs     => "脚"
    case Feet     => "足"
    case Hotbar   => "ホットバー"
  }
}

case class ConsumeItem(item: TextComponent, count: Int, extra: Option[TextComponent])
object ConsumeItem {
  given CellEncoder[ConsumeItem] = item =>
    item.extra match {
      case Some(extra) => s"${CellEncoder[TextComponent].apply(item.item)} x${item.count} (${CellEncoder[TextComponent].apply(extra)})"
      case None        => s"${CellEncoder[TextComponent].apply(item.item)} x${item.count}"
    }
}

enum CooldownType   { case ShortRange, LongRange, Summon, Heal }
object CooldownType {
  def parse(input: String): Either[String, CooldownType] = NBTTagParser.parseString(input).map(_.value).flatMap {
    case "shortRange" => Right(ShortRange)
    case "longRange"  => Right(LongRange)
    case "summon"     => Right(Summon)
    case "heal"       => Right(Heal)
    case _            => Left("Invalid CooldownType")
  }

  given CellEncoder[CooldownType] = _ match {
    case ShortRange => "近接攻撃"
    case LongRange  => "遠隔攻撃"
    case Summon     => "召喚"
    case Heal       => "回復"
  }
}

case class PrimaryAttackType(physical: Boolean, magic: Boolean)
object PrimaryAttackType {
  def parse(input: String): Either[String, PrimaryAttackType] = NBTTagParser.parseList(input).map(_.value).flatMap {
    case Some(NBTNel.String(values)) =>
      val elems = values.map(_.value)
      Right(PrimaryAttackType(elems.contains_("Physical"), elems.contains_("Magic")))
    case _                           => Left("Invalid PrimaryAttackType")
  }

  given CellEncoder[PrimaryAttackType] = _ match {
    case PrimaryAttackType(physical, magic) => List(
        Option.when(physical)("物"),
        Option.when(magic)("魔")
      ).flatten.mkString(", ")
  }
}

case class SecondaryAttackType(none: Boolean, fire: Boolean, water: Boolean, thunder: Boolean)
object SecondaryAttackType {
  def parse(input: String): Either[String, SecondaryAttackType] = NBTTagParser.parseList(input).map(_.value).flatMap {
    case Some(NBTNel.String(values)) =>
      val elems = values.map(_.value)
      Right(SecondaryAttackType(elems.contains_("None"), elems.contains_("Fire"), elems.contains_("Water"), elems.contains_("Thunder")))
    case _                           => Left("Invalid SecondaryAttackType")
  }

  given CellEncoder[SecondaryAttackType] = _ match {
    case SecondaryAttackType(none, fire, water, thunder) => List(
        Option.when(none)("無"),
        Option.when(fire)("火"),
        Option.when(water)("水"),
        Option.when(thunder)("雷")
      ).flatten.mkString(", ")
  }
}

enum RangeType   { case Never, Conditional, Probabilistic, Always }
object RangeType {
  def parse(input: String): Either[String, RangeType] = NBTTagParser.parseString(input).map(_.value).flatMap {
    case "never"       => Right(Never)
    case "condition"   => Right(Conditional)
    case "probability" => Right(Probabilistic)
    case "every"       => Right(Always)
    case _             => Left("Invalid RangeType")
  }

  given CellEncoder[RangeType] = _ match {
    case Never         => "なし"
    case Conditional   => "条件付き"
    case Probabilistic => "確率"
    case Always        => "常時"
  }
}

enum Damage   {
  case Fixed(value: String)
  case Range(min: String, max: String)
}
object Damage {
  def parse(input: String): Either[String, Damage] = NBTTagParser.parseAny(input).flatMap {
    case NBTTag.NBTTagInt(value)                                            => Right(Fixed(value.toString))
    case NBTTag.NBTTagString(value)                                         => Right(Fixed(value))
    case NBTTag.NBTTagList(Some(NBTNel.String(values))) if values.size == 1 => Right(Fixed(values.getUnsafe(0).value))
    case NBTTag.NBTTagList(Some(NBTNel.String(values))) if values.size == 2 => Right(Range(values.getUnsafe(0).value, values.getUnsafe(1).value))
    case NBTTag.NBTTagList(Some(NBTNel.Int(values))) if values.size == 1    => Right(Fixed(values.getUnsafe(0).value.toString))
    case NBTTag.NBTTagList(Some(NBTNel.Int(values))) if values.size == 2    =>
      Right(Range(values.getUnsafe(0).value.toString, values.getUnsafe(1).value.toString))
    case _                                                                  => Left("Invalid Damage")
  }

  given CellEncoder[Damage] = {
    case Fixed(value)    => value
    case Range(min, max) => s"$min - $max"
  }
}

// MARK: SheetRow Type definitions
case class SheetRow(
  id: Int,
  name: TextComponent,
  baseItemId: BaseItem,
  canUseGods: CanUseGods,
  trigger: Trigger,
  slot: Slot,
  condition: Option[TextComponent],
  remainingUses: Option[Int],
  consumeItem: Option[ConsumeItem],
  attackType1: Option[PrimaryAttackType],
  attackType2: Option[SecondaryAttackType],
  bypassResist: Boolean,
  attackRange: Option[String],
  rangeType: Option[RangeType],
  damage: Option[Damage],
  mpCost: Option[String],
  mpRequire: Option[String],
  mpHealWhenHit: Option[String],
  localCooldown: Option[Int],
  typeCooldownType: Option[CooldownType],
  typeCooldownDuration: Option[Int],
  globalCooldown: Option[Int],
  flavorText: Lore
)
object SheetRow {
  val KEY_ID                          = "ID"
  val KEY_ITEM                        = "Item"
  val KEY_NAME                        = "Name"
  val KEY_LORE                        = "Lore"
  val KEY_CONSUME_ITEM_ITEM           = "ConsumeItem.Item"
  val KEY_CONSUME_ITEM_COUNT          = "ConsumeItem.Count"
  val KEY_CONSUME_ITEM_EXTRA          = "ConsumeItem.Extra"
  val KEY_REMAINING_COUNT             = "RemainingCount"
  val KEY_SLOT                        = "Slot"
  val KEY_TRIGGER                     = "Trigger"
  val KEY_CONDITION                   = "Condition"
  val KEY_ATTACK_INFO_DAMAGE          = "AttackInfo.Damage"
  val KEY_ATTACK_INFO_ATTACK_TYPE     = "AttackInfo.AttackType"
  val KEY_ATTACK_INFO_ELEMENT_TYPE    = "AttackInfo.ElementType"
  val KEY_ATTACK_INFO_BYPASS_RESIST   = "AttackInfo.BypassResist"
  val KEY_ATTACK_INFO_IS_RANGE_ATTACK = "AttackInfo.IsRangeAttack"
  val KEY_ATTACK_INFO_ATTACK_RANGE    = "AttackInfo.AttackRange"
  val KEY_MP_COST                     = "MPCost"
  val KEY_MP_REQUIRE                  = "MPRequire"
  val KEY_MP_HEAL_WHEN_HIT            = "MPHealWhenHit"
  val KEY_LOCAL_COOLDOWN              = "LocalCooldown"
  val KEY_TYPE_COOLDOWN_TYPE          = "TypeCooldown.Type"
  val KEY_TYPE_COOLDOWN_DURATION      = "TypeCooldown.Duration"
  val KEY_SPECIAL_COOLDOWN            = "SpecialCooldown"
  val KEY_CAN_USED_GOD                = "CanUsedGod"

  val MODIFY_RE = s"^(?<!\\s*#\\s*)\\s*data modify storage asset:artifact (.+) set value (.+)$$".r

  def parseGiveFn(content: String)(using TranslateMap): Either[NonEmptyChain[String], SheetRow] = {
    val registerMap = content.split("\r?\n").collect { case MODIFY_RE(key, value) => key -> value }.toMap

    val id          = registerMap.get(KEY_ID).toRight("ID が見つかりません").flatMap(NBTTagParser.parseInt).map(_.value)
    val item        = registerMap.get(KEY_ITEM).toRight("Item が見つかりません").flatMap(BaseItem.parse)
    val name        = registerMap.get(KEY_NAME).toRight("Name が見つかりません").flatMap(TextComponent.parseStringTC)
    val lore        = registerMap.get(KEY_LORE).toRight("Lore が見つかりません").flatMap(Lore.parse)
    val slot        = registerMap.get(KEY_SLOT).toRight("Slot が見つかりません").flatMap(Slot.parse)
    val trigger     = registerMap.get(KEY_TRIGGER).toRight("Trigger が見つかりません").flatMap(Trigger.parse)
    val canUsedGods = registerMap.get(KEY_CAN_USED_GOD).toRight("CanUsedGod が見つかりません").flatMap(CanUseGods.parse)

    val condition      = registerMap.get(KEY_CONDITION).traverse(TextComponent.parseStringTC)
    val attackType1    = registerMap.get(KEY_ATTACK_INFO_ATTACK_TYPE).traverse(PrimaryAttackType.parse)
    val attackType2    = registerMap.get(KEY_ATTACK_INFO_ELEMENT_TYPE).traverse(SecondaryAttackType.parse)
    val bypassResist   = registerMap.get(KEY_ATTACK_INFO_BYPASS_RESIST).traverse(NBTTagParser.parseBoolean).map(_.getOrElse(false))
    val attackRange    = registerMap.get(KEY_ATTACK_INFO_ATTACK_RANGE).traverse(NBTTagParser.parseString(_).map(_.value))
    val rangeType      = registerMap.get(KEY_ATTACK_INFO_IS_RANGE_ATTACK).traverse(RangeType.parse)
    val damage         = registerMap.get(KEY_ATTACK_INFO_DAMAGE).traverse(Damage.parse)
    val mpCost         = registerMap.get(KEY_MP_COST).traverse(NBTTagParser.parseString(_).map(_.value)).map(_.filter(_ != "0"))
    val mpRequire      = registerMap.get(KEY_MP_REQUIRE).traverse(NBTTagParser.parseString(_).map(_.value))
    val mpHealWhenHit  = registerMap.get(KEY_MP_HEAL_WHEN_HIT).traverse(NBTTagParser.parseString(_).map(_.value)).map(_.filter(_ != "0"))
    val consumeItem    = (
      registerMap.get(KEY_CONSUME_ITEM_ITEM).traverse(TextComponent.parseStringTC(_)),
      registerMap.get(KEY_CONSUME_ITEM_COUNT).traverse(NBTTagParser.parseInt(_).map(_.value)),
      registerMap.get(KEY_CONSUME_ITEM_EXTRA).traverse(TextComponent.parseStringTC)
    ).parMapN((id, cnt, extra) => (id, cnt).mapN(ConsumeItem.apply(_, _, extra)))
    val remainingUses  = registerMap.get(KEY_REMAINING_COUNT).traverse(NBTTagParser.parseInt(_).map(_.value))
    val localCooldown  = registerMap.get(KEY_LOCAL_COOLDOWN).traverse(NBTTagParser.parseInt(_).map(_.value))
    val typeCooldown   = (
      registerMap.get(KEY_TYPE_COOLDOWN_TYPE).traverse(CooldownType.parse),
      registerMap.get(KEY_TYPE_COOLDOWN_DURATION).traverse(NBTTagParser.parseInt(_).map(_.value))
    ).parMapN((t, d) => (t, d).tupled)
    val globalCooldown = registerMap.get(KEY_SPECIAL_COOLDOWN).traverse(NBTTagParser.parseInt(_).map(_.value))

    (
      id.toEitherNec,
      name.toEitherNec,
      item.toEitherNec,
      canUsedGods.toEitherNec,
      trigger.toEitherNec,
      slot.toEitherNec,
      condition.toEitherNec,
      remainingUses.toEitherNec,
      consumeItem.toEitherNec,
      attackType1.toEitherNec,
      attackType2.toEitherNec,
      bypassResist.toEitherNec,
      attackRange.toEitherNec,
      rangeType.toEitherNec,
      damage.toEitherNec,
      mpCost.toEitherNec,
      mpRequire.toEitherNec,
      mpHealWhenHit.toEitherNec,
      localCooldown.toEitherNec,
      typeCooldown.map(_.map(_._1)).toEitherNec,
      typeCooldown.map(_.map(_._2)).toEitherNec,
      globalCooldown.toEitherNec,
      lore.toEitherNec
    ).parMapTuple(SheetRow.apply)
  }

  val HEADERS = NonEmptyList.of(
    "ID",
    "神器名",
    "元となるアイテム",
    "使用可能信仰",
    "発動トリガー",
    "発動スロット",
    "発動条件",
    "使用可能回数",
    "消費アイテム",
    "第一攻撃属性",
    "第ニ攻撃属性",
    "防御貫通",
    "射程",
    "範囲",
    "ダメージ",
    "消費 MP",
    "要求 MP",
    "回復 MP",
    "通常 CD",
    "種別 CD (種別)",
    "種別 CD (tick)",
    "特殊 CD",
    "フレーバーテキスト"
  )

  given CellEncoder[Boolean] = { case true => "TRUE"; case false => "FALSE" }
  given RowEncoder[SheetRow] = deriveRowEncoder[SheetRow]
}

// MARK: Main definitions
object Main extends IOApp.Simple {
  override def run = for {
    cwd <- Files.forIO.currentWorkingDirectory
    pjRoot = cwd / ".."

    given TranslateMap <- TranslateMap.fetchTranslateMap()

    _ <- Files.forIO
      .list(pjRoot / "Asset" / "data" / "asset" / "functions" / "artifact")
      .map(p => p.fileName.toString.slice(0, 4).dropWhile(_ == '0') -> p)
      .parEvalMap(16) { (id, dir) =>
        val path    = dir / "give" / "2.give.mcfunction"
        val program = for {
          exists <- EitherT.liftF(Files.forIO.exists(path))
          _      <- EitherT.exitWhenA(exists)(NonEmptyChain.one(s"ID: $id に give が存在しません"))

          row <- EitherT {
            Files.forIO
              .readAll(path)
              .through(text.utf8.decode)
              .compile
              .string
              .map(SheetRow.parseGiveFn)
          }
        } yield row
        program.value.map(id -> _)
      }
      .evalTap {
        case (id, Left(err)) => IO.println(s"ID: $id にエラーが発生しました:") >> err.map("- " + _).traverseVoid(IO.println)
        case (id, Right(_))  => IO.unit
      }
      .collect { case (_, Right(row)) => row }
      .through(encodeWithGivenHeaders[SheetRow](headers = SheetRow.HEADERS))
      .through(Files.forIO.writeUtf8(cwd / "output" / "artifact-spreadsheet.csv", Flags(Flag.Create, Flag.Write, Flag.Truncate)))
      .compile
      .drain
  } yield ()
}

Main.main(Array.empty)

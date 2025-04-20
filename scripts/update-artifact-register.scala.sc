import scala.util.chaining.*
import java.text.DecimalFormat
import java.text.DecimalFormatSymbols
import java.util.Locale

enum ShardColor {
  case Red, Blue, Green
}

def main(): Unit = {
  val colorRegistry = os
    .read(os.pwd / "input" / "artifact-colors.tsv")
    .split("\n")
    .map { line =>
      line.split("\t").map(_.trim) match {
        case Array(id, colors, isSet) => id -> (colors.split(",").map(_.trim).map {
            case "レッド"  => ShardColor.Red
            case "ブルー"  => ShardColor.Blue
            case "グリーン" => ShardColor.Green
            case _      => throw new Exception(s"Invalid color: $line")
          }, isSet.toBoolean)
        case _                        => throw new Exception(s"Invalid line: $line")
      }
    }
    .toMap

  val artifacts  = os
    .list(os.pwd / ".." / "Asset" / "data" / "asset" / "functions" / "artifact")
    .map(p => p.last.slice(0, 4).dropWhile(_ == '0') -> p)
  val baseRegexp = """data modify storage asset:artifact RarityRegistry\[(\d+)\] append value (.+)$""".r
  for ((id, dir) <- artifacts; if colorRegistry.contains(id)) {
    val path            = dir / "register.mcfunction"
    val (colors, isSet) = colorRegistry(id)
    if (isSet) {
      // do nothing
    } else if (!os.exists(path)) {
      println(s"Artifact $id does not have a register.mcfunction file (colors: ${colors.mkString(",")})")
    } else {
      val content       = os.read(path)
      val (rarity, ids) = baseRegexp.findFirstMatchIn(content) match {
        case Some(m) => (m.group(1), m.group(2))
        case _       => throw new Exception(s"Invalid register.mcfunction file: $path")
      }
      val commands      = colors.map {
        case ShardColor.Red   => s"data modify storage asset:artifact RarityRegistryWithColor.Red[$rarity] append value $ids"
        case ShardColor.Blue  => s"data modify storage asset:artifact RarityRegistryWithColor.Blue[$rarity] append value $ids"
        case ShardColor.Green => s"data modify storage asset:artifact RarityRegistryWithColor.Green[$rarity] append value $ids"
      }
      os.write.over(path, content + (if (content.endsWith("\n")) "" else "\n") + commands.mkString("\n") + "\n")
    }
  }
}

main()

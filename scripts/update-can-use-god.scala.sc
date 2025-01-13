import scala.util.chaining.*
import java.text.DecimalFormat
import java.text.DecimalFormatSymbols
import java.util.Locale

case class CanUseGods(flora: Boolean, urban: Boolean, nyaptov: Boolean, wiki: Boolean, rumor: Boolean) {
  def toNBTListString: String = {
    val text =
      (if (flora) List("\"Flora\"") else Nil)
        ::: (if (urban) List("\"Urban\"") else Nil)
        ::: (if (nyaptov) List("\"Nyaptov\"") else Nil)
        ::: (if (wiki) List("\"Wi-ki\"") else Nil)
        ::: (if (rumor) List("\"Rumor\"") else Nil)
        ::: Nil
    text.mkString("[", ", ", "]")
  }
}

def main(): Unit = {
  val canUseGods = os
    .read(os.pwd / "input" / "can-use-god.csv")
    .split("\n")
    .map { line =>
      line.split(",").map(_.trim) match {
        case Array(id, flora, urban, nyaptov, wiki, rumor) =>
          id -> CanUseGods(flora == "TRUE", urban == "TRUE", nyaptov == "TRUE", wiki == "TRUE", rumor == "TRUE")
        case _                                             => throw new Exception(s"Invalid line: $line")
      }
    }
    .toMap

  val artifacts = os
    .list(os.pwd / ".." / "Asset" / "data" / "asset" / "functions" / "artifact")
    .map(p => p.last.slice(0, 4).dropWhile(_ == '0') -> p)
  for ((id, dir) <- artifacts) {
    val path       = dir / "give" / "2.give.mcfunction"
    val gods       = canUseGods(id)
    val content    = os.read(path)
    val newContent = """(?<=asset:artifact CanUsedGod set value )\[.*\]""".r.replaceFirstIn(content, gods.toNBTListString)
    os.write.over(path, newContent)
  }
}

main()

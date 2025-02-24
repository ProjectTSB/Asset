import scala.util.chaining.*
import java.text.DecimalFormat
import java.text.DecimalFormatSymbols
import java.util.Locale

enum Rarity {
  case Level1, Level2, Level3, Level4, Chest, Trade, OtherArtifact, MobDrop
}

def main(): Unit = {
  val artifactRarities = os
    .read(os.pwd / "input" / "artifact-rarity.csv")
    .split("\n")
    .flatMap { line =>
      line.split(",") match {
        case Array(id, rarity, isArmorSet) => rarity match {
            case "レベル1"    => Some(id -> (Rarity.Level1, isArmorSet == "TRUE"))
            case "レベル2"    => Some(id -> (Rarity.Level2, isArmorSet == "TRUE"))
            case "レベル3"    => Some(id -> (Rarity.Level3, isArmorSet == "TRUE"))
            case "レベル4"    => Some(id -> (Rarity.Level4, isArmorSet == "TRUE"))
            case "チェスト"    => Some(id -> (Rarity.Chest, isArmorSet == "TRUE"))
            case "取引"      => Some(id -> (Rarity.Trade, isArmorSet == "TRUE"))
            case "他神器"     => Some(id -> (Rarity.OtherArtifact, isArmorSet == "TRUE"))
            case "MOBドロップ" => Some(id -> (Rarity.MobDrop, isArmorSet == "TRUE"))
            case _         => None
          }
        case _ => throw new Exception(s"Invalid line: $line")
      }
    }
    .toMap

  val artifacts     = os
    .list(os.pwd / ".." / "Asset" / "data" / "asset" / "functions" / "artifact")
    .map(p => p.last.slice(0, 4).dropWhile(_ == '0') -> p)
  val rarityPattern = """data modify storage asset:artifact RarityRegistry\[(\d)\]""".r
  for ((id, dir) <- artifacts) {
    val path = dir / "register.mcfunction"
    artifactRarities.get(id) match {
      case Some((sprRarity, isArmorSet)) =>
        if (os.exists(path)) {
          val rawRegister  = os.read(path)
          val actualRarity = rarityPattern
            .findFirstMatchIn(rawRegister)
            .map(_.group(1))
            .getOrElse("None")
          if (isArmorSet) {
            println(s"register があるのに防具纏めが有効になってるよ: ID: $id")
          }
          if (sprRarity == Rarity.Chest || sprRarity == Rarity.Trade || sprRarity == Rarity.OtherArtifact || sprRarity == Rarity.MobDrop) {
            // register があるのに、レアリティが設定されていない場合
            println(
              s"register があるのにスプシにレベルが載ってないよ: ID: $id, 定義: Level$actualRarity, スプシ: $sprRarity"
            )
          } else {
            // register があるのに、レアリティが設定されている場合
            sprRarity match {
              case Rarity.Level1 if actualRarity != "1" => println(s"register とスプシのレベルが異なるよ: ID: $id, 定義: Level$actualRarity, スプシ: $sprRarity")
              case Rarity.Level2 if actualRarity != "2" => println(s"register とスプシのレベルが異なるよ: ID: $id, 定義: Level$actualRarity, スプシ: $sprRarity")
              case Rarity.Level3 if actualRarity != "3" => println(s"register とスプシのレベルが異なるよ: ID: $id, 定義: Level$actualRarity, スプシ: $sprRarity")
              case Rarity.Level4 if actualRarity != "4" => println(s"register とスプシのレベルが異なるよ: ID: $id, 定義: Level$actualRarity, スプシ: $sprRarity")
              case _                                    => ()
            }
          }
        } else {
          // register が無いのに、レアリティが設定されている場合
          if (sprRarity == Rarity.Level1 || sprRarity == Rarity.Level2 || sprRarity == Rarity.Level3 || sprRarity == Rarity.Level4) {
            if (!isArmorSet) {
              println(
                s"register が無いのにスプシにレベルが載ってるよ: ID: $id, 定義: 無し, スプシ: $sprRarity"
              )
            }
          }
        }
      case None                          => println(s"そもそもスプシに入手方法が書いてないよ: $id")
    }
  }
}

main()

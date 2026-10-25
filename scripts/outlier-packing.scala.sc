import cats.data.NonEmptyVector
import cats.syntax.all.*
import cats.kernel.Semigroup
import scala.util.chaining.*
import java.text.DecimalFormat
import java.text.DecimalFormatSymbols
import java.util.Locale

// MARK: NBTTag Type definitions
trait NBTTagListOps(value: Option[NBTNel]) {
  def toList: List[NBTTag] = value.map(_.values.toList).orEmpty
}

enum NBTTag {
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

// MARK: Type definitions
case class XZInt2(x: Int, z: Int)
case class Int3(x: Int, y: Int, z: Int)

case class Double3(x: Double, y: Double, z: Double)

case class BoundingBox(p1: Int3, p2: Int3) {
  def min = Int3(p1.x.min(p2.x), p1.y.min(p2.y), p1.z.min(p2.z))
  def max = Int3(p1.x.max(p2.x), p1.y.max(p2.y), p1.z.max(p2.z))

  def center = Double3((p1.x + p2.x) / 2, (p1.y + p2.y) / 2, (p1.z + p2.z) / 2)

  def xWidth = (p2.x - p1.x).abs
  def yWidth = (p2.y - p1.y).abs
  def zWidth = (p2.z - p1.z).abs

  def boxBoundingThisAnd(other: BoundingBox): BoundingBox = {
    val thisMin  = this.min
    val thisMax  = this.max
    val otherMin = other.min
    val otherMax = other.max
    BoundingBox(
      Int3(
        thisMin.x.min(otherMin.x),
        thisMin.y.min(otherMin.y),
        thisMin.z.min(otherMin.z)
      ),
      Int3(
        thisMax.x.max(otherMax.x),
        thisMax.y.max(otherMax.y),
        thisMax.z.max(otherMax.z)
      )
    )
  }

  def contains(p: Int3): Boolean = {
    val thisMax = this.max
    val thisMin = this.min
    thisMin.x <= p.x && p.x <= thisMax.x &&
    thisMin.y <= p.y && p.y <= thisMax.y &&
    thisMin.z <= p.z && p.z <= thisMax.z
  }
}

enum RLikeTree[LeafData] {
  case Node(mbr: BoundingBox, subtrees: NonEmptyVector[RLikeTree[LeafData]])
  case Leaf(mbr: BoundingBox, data: LeafData)
}

// MARK: Extensions
extension [L](rlt: RLikeTree[L]) {
  def mbr: BoundingBox = rlt match {
    case RLikeTree.Node(mbr, _) => mbr
    case RLikeTree.Leaf(mbr, _) => mbr
  }

  def isWellFormedRTree(degree: Int) = {
    import scala.util.boundary, boundary.break
    boundary {
      def unionSubtreeMbrAndCheckContainment(
        tree: RLikeTree[L]
      ): BoundingBox = tree match {
        case RLikeTree.Node(mbr, subtrees) =>
          val subtreeMbrs = subtrees.map(unionSubtreeMbrAndCheckContainment)
          val unionedMbr  = subtreeMbrs.reduce(_.boxBoundingThisAnd(_))

          if (mbr == unionedMbr) mbr else boundary.break(false)
        case RLikeTree.Leaf(mbr, _)        => mbr
      }

      def uniformDepth(tree: RLikeTree[L]): Int = tree match {
        case RLikeTree.Node(_, tiles) =>
          val depths = tiles.map(t => uniformDepth(t))

          if (depths.distinct.size == 1) depths.head + 1
          else boundary.break(false)
        case RLikeTree.Leaf(_, _)     => 1
      }

      def checkDegree(tree: RLikeTree[L]): Boolean = tree match {
        case RLikeTree.Node(_, tiles) =>
          if (tiles.size <= degree) tiles.forall(checkDegree)
          else boundary.break(false)
        case RLikeTree.Leaf(_, _)     => true
      }

      { unionSubtreeMbrAndCheckContainment(rlt); true }
      && uniformDepth(rlt) > 1
      && checkDegree(rlt)
    }
  }

  def height: Int = rlt match {
    case RLikeTree.Node(_, tiles) => tiles.map(_.height).reduce(_ max _) + 1
    case RLikeTree.Leaf(_, _)     => 1
  }

  def findRegionsContaining(p: Int3): Vector[RLikeTree.Leaf[L]] = {
    val result = new scala.collection.mutable.ArrayBuffer[RLikeTree.Leaf[L]]()

    def traverse(tree: RLikeTree[L]): Unit = tree match {
      case RLikeTree.Node(_, subtrees)   => subtrees.toVector.foreach { subtree =>
          if (subtree.mbr.contains(p)) {
            traverse(subtree)
          }
        }
      case leaf @ RLikeTree.Leaf(mbr, _) => if (mbr.contains(p)) {
          result.append(leaf)
        }
    }

    traverse(rlt)

    result.toVector
  }
}

extension [A](v: NonEmptyVector[A]) {
  def chunked(size: Int): NonEmptyVector[NonEmptyVector[A]] = {
    require(size > 0)

    val (firstChunk, firstRest) = v.toVector.splitAt(size)
    var chunks                  = NonEmptyVector.of(NonEmptyVector.fromVectorUnsafe(firstChunk))
    var remaining               = firstRest

    while (remaining.size > 0) {
      val (chunk, rest) = remaining.splitAt(size)
      chunks = chunks.append(NonEmptyVector.fromVectorUnsafe(chunk))
      remaining = rest
    }

    chunks
  }

  def splitInto(pieceCount: Int): NonEmptyVector[NonEmptyVector[A]] = {
    require(pieceCount > 0)

    val pieceSize = v.length / pieceCount
    val remainder = v.length % pieceCount

    val (firstChunk, firstRest) = v.toVector.splitAt(if (remainder > 0) pieceSize + 1 else pieceSize)
    var chunks                  = NonEmptyVector.of(NonEmptyVector.fromVectorUnsafe(firstChunk))
    var remaining               = firstRest

    (1 until pieceCount).foreach { i =>
      val (chunk, rest) = remaining.splitAt(if (i < remainder) then pieceSize + 1 else pieceSize)
      chunks = chunks.append(NonEmptyVector.fromVectorUnsafe(chunk))
      remaining = rest
    }

    assert(remaining.isEmpty)
    assert(chunks.length == pieceCount)
    assert(chunks.map(_.length).toVector.distinct.size <= 2)
    chunks
  }
}

// MARK: fn: regionsFromFile
def regionsFromFile[L](path: os.Path, f: (Int, Int3) => L, defaultSize: Option[Int] = None): Map[String, Vector[(BoundingBox, L)]] = {
  if (!os.exists(path)) {
    return Map.empty
  }
  val lines      = os.read(path).split("\n")
  val dataPoints = lines.zipWithIndex
    .flatMap {
      case (line, index) => line.split(",").map(_.trim) match {
          case Array(id, dim, x, y, z)                         =>
            val s = defaultSize.get
            val bounds = (s, s, s, s, s, s)
            Some(dim -> (id.toInt -> (Int3(x.toInt, y.toInt, z.toInt), bounds)))
          case Array(id, dim, x, y, z, size)                   =>
            val s = Math.max(size.toInt, 32)
            val bounds = (s, s, s, s, s, s)
            Some(dim -> (id.toInt -> (Int3(x.toInt, y.toInt, z.toInt), bounds)))
          case Array(id, dim, x, y, z, minX, maxX, minZ, maxZ) =>
            val s = defaultSize.get
            val bounds = (s + minX.toInt, s + maxX.toInt, s, s, s + minZ.toInt, s + maxZ.toInt)
            Some(dim -> (id.toInt -> (Int3(x.toInt, y.toInt, z.toInt), bounds)))
          case _                                               =>
            println(s"Invalid line at index $index: $line")
            None
        }
    }
    .toVector
    .groupMap(_._1)(_._2)
  dataPoints.view.mapValues { regions =>
    regions.map {
      case (id, (p, (minX, maxX, minY, maxY, minZ, maxZ))) =>
        val bb = BoundingBox(
          Int3(p.x - minX, p.y - minY, p.z - minZ),
          Int3(p.x + maxX, p.y + maxY, p.z + maxZ)
        )
        bb -> f(id, p)
    }
  }.toMap
}

// MARK: fn: regionCompoundTagFromMbr
def regionCompoundTagFromMbr(mbr: BoundingBox): NBTTag.NBTTagCompound = {
  import NBTTag.*
  NBTTagCompound(
    Map(
      "X" -> NBTTagLongArray(Vector(NBTTagLong(mbr.min.x), NBTTagLong(mbr.max.x))),
      "Y" -> NBTTagLongArray(Vector(NBTTagLong(mbr.min.y), NBTTagLong(mbr.max.y))),
      "Z" -> NBTTagLongArray(Vector(NBTTagLong(mbr.min.z), NBTTagLong(mbr.max.z)))
    )
  )
}

// MARK: fn: main
def main(): Unit = {
  val regions = {
    val spawnerRegions    = regionsFromFile(os.pwd / "input" / "spawner-outliers.csv", (id, p) => (p, 1 -> id))
    println(s"Spawners: (${spawnerRegions.map((d, r) => s"$d: ${r.size}").mkString(", ")})")
    val containerRegions  = regionsFromFile(os.pwd / "input" / "container-outliers.csv", (id, p) => (p, 2 -> id), defaultSize = Some(16))
    println(s"Containers: (${containerRegions.map((d, r) => s"$d: ${r.size}").mkString(", ")})")
    val traderRegions     = regionsFromFile(os.pwd / "input" / "trader-outliers.csv", (id, p) => (p, 3 -> id), defaultSize = Some(32))
    println(s"Traders: (${traderRegions.map((d, r) => s"$d: ${r.size}").mkString(", ")})")
    val islandRegions     = regionsFromFile(os.pwd / "input" / "island-outliers.csv", (id, p) => (p, 4 -> id), defaultSize = Some(32))
    println(s"Islands: (${islandRegions.map((d, r) => s"$d: ${r.size}").mkString(", ")})")
    val teleporterRegions = regionsFromFile(os.pwd / "input" / "teleporter-outliers.csv", (id, p) => (p, 5 -> id), defaultSize = Some(16))
    println(s"Teleporters: (${teleporterRegions.map((d, r) => s"$d: ${r.size}").mkString(", ")})")

    List(spawnerRegions, containerRegions, traderRegions, islandRegions, teleporterRegions)
      .reduceLeft(_.alignCombine(_))
      .view
      .mapValues(NonEmptyVector.fromVectorUnsafe)
      .toMap
  }
  println(s"Total regions: ${regions.values.map(_.size).sum}")

  for ((dim, regions) <- regions) {
    println("---------------")
    println(s"Dimension: $dim")
    println(s"Regions: ${regions.size}")

    import NBTTag.*
    val compoundList = NBTTagList(Some(NBTNel.Compound(regions.map {
      case (bb, (p, (t, id))) => NBTTagCompound(
          Map(
            "B" -> regionCompoundTagFromMbr(bb),
            "R" -> NBTTagCompound(Map("T" -> NBTTagByte(t.toByte), "I" -> NBTTagInt(id)))
          )
        )
    })))
    os.write.over(os.pwd / "output" / s"strpack-rtree-nbttag-$dim-outliers.txt", compoundList.toSNBT)
  }
}

main()

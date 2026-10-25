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

// MARK: fn: strPack
def strPack[L](
  leaves: NonEmptyVector[(BoundingBox, L)],
  maxInternalDegree: Int
): RLikeTree[L] = {
  require(maxInternalDegree > 1)

  def packLayer[L1](
    children: NonEmptyVector[(BoundingBox, L1)]
  ): NonEmptyVector[(BoundingBox, NonEmptyVector[(BoundingBox, L1)])] = {
    import Math.*

    val childrenWithCenter = children.map { case (mbr, data) => (mbr.center, mbr, data) }

    // slab count in this layer
    val P = ceil(children.size.toDouble / maxInternalDegree).toInt

    val S_X = ceil(pow(P, 3.0 / 8.0)).toInt
    val S_Z = ceil(pow(P, 3.0 / 8.0)).toInt

    import scala.util.boundary, boundary.break
    val slabs = boundary {
      if (childrenWithCenter.size <= maxInternalDegree) {
        boundary.break(NonEmptyVector.of(childrenWithCenter))
      }

      val slicedByX  = childrenWithCenter.sortBy(_._1.x).splitInto(S_X)
      val slicedByXZ = slicedByX.flatMap(slab =>
        if (slab.size <= maxInternalDegree) {
          NonEmptyVector.of(slab)
        } else {
          slab.sortBy(_._1.z).splitInto(S_Z)
        }
      )

      slicedByXZ.flatMap(_.sortBy(_._1.y).chunked(maxInternalDegree))
    }

    slabs.map { slab =>
      val mbrOfSlab = slab.map(_._2).reduce(_.boxBoundingThisAnd(_))
      (mbrOfSlab, slab.map { case (_, mbr, data) => (mbr, data) })
    }
  }

  var topLayerNodes: NonEmptyVector[RLikeTree.Node[L]] = packLayer(leaves).map {
    case (mbr, leavesTile) => RLikeTree.Node(mbr, leavesTile.map(RLikeTree.Leaf(_, _)))
  }

  while (topLayerNodes.size > 1) {
    topLayerNodes = packLayer(topLayerNodes.map(n => (n.mbr, n.subtrees))).map {
      case (mbr, children) => RLikeTree.Node(mbr, children.map(RLikeTree.Node(_, _)))
    }
  }

  // topLayerNodes.size <= 1 so topLayerNodes is a singleton
  topLayerNodes.head
}.ensuring(r => r.isWellFormedRTree(maxInternalDegree))

// MARK: fn: visualizeAsSvg
def visualizeAsSvg[L](rtree: RLikeTree[L]): String = {
  val intermediateRectStringBuilder = new StringBuilder()
  val regionRectStringBuilder       = new StringBuilder()

  val gutter  = 40
  val xOffset = gutter + -rtree.mbr.min.x
  val zOffset = gutter + -rtree.mbr.min.z

  def traverse[L](tree: RLikeTree[L]): Unit = tree match {
    case RLikeTree.Node(mbr, subtrees) =>
      val rect =
        s"""<rect x="${xOffset + mbr.min.x}" y="${zOffset + mbr.min.z}" width="${mbr.xWidth}" height="${mbr.zWidth}" fill-opacity="7%" fill="blue" stroke="black" stroke-width="1" />"""
      intermediateRectStringBuilder.append(rect)
      subtrees.toVector.foreach(traverse)
    case RLikeTree.Leaf(mbr, data)     =>
      val rect =
        s"""<rect x="${xOffset + mbr.min.x}" y="${zOffset + mbr.min.z}" width="${mbr.xWidth}" height="${mbr.zWidth}" fill-opacity="40%" fill="red" stroke="black" stroke-width="1" />"""
      regionRectStringBuilder.append(rect)
  }
  traverse(rtree)

  s"""|<svg viewBox="0 0 ${gutter + xOffset + rtree.mbr.max.x} ${gutter + zOffset + rtree.mbr.max.z}" xmlns="http://www.w3.org/2000/svg">
      |${intermediateRectStringBuilder.result()}
      |${regionRectStringBuilder.result()}
      |</svg>""".stripMargin
}

// MARK: fn: analyzeCosts
def analyzeCosts[L](rtree: RLikeTree[L], f: L => XZInt2): Unit = {
  def project(rtree: RLikeTree[L]): RLikeTree[XZInt2] = rtree match {
    case RLikeTree.Node(mbr, subtrees) => RLikeTree.Node(
        BoundingBox(
          Int3(mbr.min.x, -1, mbr.min.z),
          Int3(mbr.max.x, 1, mbr.max.z)
        ),
        subtrees.map(project)
      )
    case RLikeTree.Leaf(mbr, data)     => RLikeTree.Leaf(
        BoundingBox(
          Int3(mbr.min.x, -1, mbr.min.z),
          Int3(mbr.max.x, 1, mbr.max.z)
        ),
        f(data)
      )
  }

  val projected = project(rtree)

  case class IntStatFromInt3(stat: Int, attainedAt: Int3)
  case class Statistics(
    dataPointCount: Int,
    worstOverlappingIntermediateNodeCount: IntStatFromInt3,
    worstRegionMembershipTestCount: IntStatFromInt3,
    meanOverlappingIntermediateNodeCount: Double,
    meanRegionMembershipTestCount: Double
  ) {
    require(dataPointCount > 0)
  }
  given Semigroup[Statistics] with {
    def combine(x: Statistics, y: Statistics): Statistics = Statistics(
      x.dataPointCount + y.dataPointCount,
      if (x.worstOverlappingIntermediateNodeCount.stat > y.worstOverlappingIntermediateNodeCount.stat) then x.worstOverlappingIntermediateNodeCount
      else y.worstOverlappingIntermediateNodeCount,
      if (x.worstRegionMembershipTestCount.stat > y.worstRegionMembershipTestCount.stat) then x.worstRegionMembershipTestCount
      else y.worstRegionMembershipTestCount,
      (x.meanOverlappingIntermediateNodeCount * x.dataPointCount + y.meanOverlappingIntermediateNodeCount * y.dataPointCount) / (x.dataPointCount + y.dataPointCount),
      (x.meanRegionMembershipTestCount * x.dataPointCount + y.meanRegionMembershipTestCount * y.dataPointCount) / (x.dataPointCount + y.dataPointCount)
    )
  }

  def statsAtSinglePoint(p: Int3): Statistics = {
    var overlappingIntermediateNodeCount: Int = 0
    var regionMembershipTestCount: Int        = 0

    def traverse[L](tree: RLikeTree[L]): Unit = tree match {
      case RLikeTree.Node(_, subtrees) => subtrees.toVector.foreach { subtree =>
          if (subtree.mbr.contains(p)) {
            overlappingIntermediateNodeCount += 1
            traverse(subtree)
          }
          regionMembershipTestCount += 1
        }
      case RLikeTree.Leaf(_, _)        =>
    }
    traverse(rtree)

    Statistics(
      dataPointCount = 1,
      worstOverlappingIntermediateNodeCount = IntStatFromInt3(
        stat = overlappingIntermediateNodeCount,
        attainedAt = p
      ),
      worstRegionMembershipTestCount = IntStatFromInt3(
        stat = regionMembershipTestCount,
        attainedAt = p
      ),
      meanOverlappingIntermediateNodeCount = overlappingIntermediateNodeCount.toDouble,
      meanRegionMembershipTestCount = regionMembershipTestCount.toDouble
    )
  }

  println("Tree height: " + rtree.height)
  val sampledStats = Semigroup.combineAllOption {
    (rtree.mbr.min.x to rtree.mbr.max.x).iterator.flatMap { x =>
      (rtree.mbr.min.z to rtree.mbr.max.z).iterator.flatMap { z =>
        val regionsCotaniningXZWhenProjected = projected.findRegionsContaining(Int3(x, 0, z))
        val bottomOfRegions                  = regionsCotaniningXZWhenProjected.map {
          case RLikeTree.Leaf(regionMbr, data) => regionMbr.min.y
        }.distinct

        bottomOfRegions.iterator.map { y =>
          statsAtSinglePoint(Int3(x, y, z))
        }
      }
    }
  }.get
  println("Sampled stats: " + sampledStats)
}

// MARK: fn: regionsFromFile
def regionsFromFile[L](path: os.Path, f: (Int, Int3) => L, defaultSize: Option[Int] = None): Map[String, Vector[(BoundingBox, L)]] = {
  if (!os.exists(path)) {
    return Map.empty
  }
  val lines      = os.read(path).split("\n")
  val dataPoints = lines.zipWithIndex
    .flatMap { case (line, index) =>
      line.split(",").map(_.trim) match {
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

// MARK: fn: commandFromTree
def compoundTagFromTree[L](rtree: RLikeTree[L], f: L => NBTTag, fixedHeight: Option[Int]): NBTTag.NBTTagCompound = {
  import NBTTag.*
  def regionCompoundTagFromMbr(mbr: BoundingBox): NBTTagCompound                           = NBTTagCompound(
    Map(
      "X" -> NBTTagLongArray(Vector(NBTTagLong(mbr.min.x), NBTTagLong(mbr.max.x))),
      "Y" -> NBTTagLongArray(Vector(NBTTagLong(mbr.min.y), NBTTagLong(mbr.max.y))),
      "Z" -> NBTTagLongArray(Vector(NBTTagLong(mbr.min.z), NBTTagLong(mbr.max.z)))
    )
  )
  def traverse(tree: RLikeTree[L]): NBTTagCompound                                         = tree match {
    case RLikeTree.Node(mbr, subtrees) => NBTTagCompound(
        Map(
          "B" -> regionCompoundTagFromMbr(mbr),
          "N" -> NBTTagList(Some(NBTNel.Compound(subtrees.map(traverse))))
        )
      )
    case RLikeTree.Leaf(mbr, data)     => NBTTagCompound(
        Map(
          "B" -> regionCompoundTagFromMbr(mbr),
          "R" -> f(data)
        )
      )
  }
  def wrapTag(tag: NBTTagCompound): NBTTagCompound                                         = NBTTagCompound(
    Map(
      "B" -> tag.value("B"),
      "N" -> NBTTagList(Some(NBTNel.Compound(NonEmptyVector.one(tag))))
    )
  )
  def coerceHeight(tag: NBTTagCompound, tagHeight: Int, targetHeight: Int): NBTTagCompound = (tagHeight, targetHeight) match {
    case (h, t) if h == t => tag
    case (h, t) if h < t  => coerceHeight(wrapTag(tag), h + 1, targetHeight)
    case (h, t) if h > t  => throw new Exception(s"Cannot coerce height from $h to $t")
  }

  val tag =  traverse(rtree)
  fixedHeight match {
    case Some(targetHeight) => coerceHeight(tag, rtree.height, targetHeight)
    case None               => tag
  }
}

// MARK: fn: main
def main(): Unit = {
  val MAX_INTERNAL_DEGREE = 4
  val HEIGHT              = 8

  val regions = {
    val spawnerRegions    = regionsFromFile(os.pwd / "input" / "spawners.csv", (id, p) => (p, 1 -> id))
    println(s"Spawners: (${spawnerRegions.map((d, r) => s"$d: ${r.size}").mkString(", ")})")
    val containerRegions  = regionsFromFile(os.pwd / "input" / "containers.csv", (id, p) => (p, 2 -> id), defaultSize = Some(16))
    println(s"Containers: (${containerRegions.map((d, r) => s"$d: ${r.size}").mkString(", ")})")
    val traderRegions     = regionsFromFile(os.pwd / "input" / "traders.csv", (id, p) => (p, 3 -> id), defaultSize = Some(32))
    println(s"Traders: (${traderRegions.map((d, r) => s"$d: ${r.size}").mkString(", ")})")
    val islandRegions     = regionsFromFile(os.pwd / "input" / "islands.csv", (id, p) => (p, 4 -> id), defaultSize = Some(32))
    println(s"Islands: (${islandRegions.map((d, r) => s"$d: ${r.size}").mkString(", ")})")
    val teleporterRegions = regionsFromFile(os.pwd / "input" / "teleporters.csv", (id, p) => (p, 5 -> id), defaultSize = Some(16))
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

    val rtree = strPack(regions, MAX_INTERNAL_DEGREE)

    println(s"Tree width: 4, Tree height: ${rtree.height}")
    os.write.over(os.pwd / "output" / s"strpack-rtree-$dim.svg", visualizeAsSvg(rtree))

    val compoundTag = {
      def dataToTag(data: (Int, Int)): NBTTag = NBTTag.NBTTagCompound(
        Map("T" -> NBTTag.NBTTagByte(data._1.toByte), "I" -> NBTTag.NBTTagInt(data._2))
      )
      compoundTagFromTree(rtree, (_, data) => dataToTag(data), fixedHeight = Some(HEIGHT))
    }

    os.write.over(os.pwd / "output" / s"strpack-rtree-nbttag-$dim.txt", compoundTag.toSNBT)

    // analyze costs with varying maxInternalDegree
    // List(2, 3, 4, 5, 6, 7, 8, 9, 10).foreach { maxInternalDegree =>
    //   println("-----")
    //   println(
    //     s"Costs analysis for strPack(maxInternalDegree = ${maxInternalDegree}):"
    //   )
    //   analyzeCosts(strPack(regions, maxInternalDegree), (p, _) => XZInt2(p.x, p.z))
    // }
  }
}

main()

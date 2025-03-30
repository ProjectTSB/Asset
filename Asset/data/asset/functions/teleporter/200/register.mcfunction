#> asset:teleporter/200/register
#
# テレポーターの定義データ
#
# @within function asset:teleporter/200/


execute unless loaded 3 84 15 run return 1

# ID (int)
    data modify storage asset:teleporter ID set value 200
# Dimension (string[minecraft:dimension])
    data modify storage asset:teleporter Dimension set value "minecraft:the_nether"
# Pos ([int] @ 3)
    data modify storage asset:teleporter Pos set value [3, 84, 15]
# GroupIDs ([string])
    data modify storage asset:teleporter GroupIDs set value ["islands-nether"]
# デフォルトの起動状態 ("InvisibleDeactivate" | "VisibleDeactivate" | "Activate")
    data modify storage asset:teleporter ActivationState set value "Activate"
# 色 ([int @ 0..255] @ 3)
    data modify storage asset:teleporter Color set value [255, 255, 255]
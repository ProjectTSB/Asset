#> asset:teleporter/57/register
#
# テレポーターの定義データ
#
# @within function asset:teleporter/57/


execute unless loaded 3 73 126 run return 1

# ID (int)
    data modify storage asset:teleporter ID set value 57
# Dimension (string[minecraft:dimension])
    data modify storage asset:teleporter Dimension set value "minecraft:the_nether"
# Pos ([int] @ 3)
    data modify storage asset:teleporter Pos set value [3, 73, 126]
# GroupIDs ([string])
    data modify storage asset:teleporter GroupIDs set value ["islands"]
# デフォルトの起動状態 ("InvisibleDeactivate" | "VisibleDeactivate" | "Activate")
    data modify storage asset:teleporter ActivationState set value "InvisibleDeactivate"
# 色 ([int @ 0..255] @ 3)
    data modify storage asset:teleporter Color set value [255, 255, 255]
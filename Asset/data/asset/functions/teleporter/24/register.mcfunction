#> asset:teleporter/24/register
#
# テレポーターの定義データ
#
# @within function asset:teleporter/24/


execute unless loaded -13 38 167 run return 1

# ID (int)
    data modify storage asset:teleporter ID set value 24
# Dimension (string[minecraft:dimension])
    data modify storage asset:teleporter Dimension set value "minecraft:overworld"
# Pos ([int] @ 3)
    data modify storage asset:teleporter Pos set value [-13, 38, 167]
# GroupIDs ([string])
    data modify storage asset:teleporter GroupIDs set value ["arena-24"]
# デフォルトの起動状態 ("InvisibleDeactivate" | "VisibleDeactivate" | "Activate")
    data modify storage asset:teleporter ActivationState set value "Activate"
# 色 ([int @ 0..255] @ 3)
    data modify storage asset:teleporter Color set value [255, 255, 255]
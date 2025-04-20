#> asset:teleporter/103/register
#
# テレポーターの定義データ
#
# @within function asset:teleporter/103/


execute unless loaded -2157 145 -897 run return 1

# ID (int)
    data modify storage asset:teleporter ID set value 103
# Dimension (string[minecraft:dimension])
    data modify storage asset:teleporter Dimension set value "minecraft:overworld"
# Pos ([int] @ 3)
    data modify storage asset:teleporter Pos set value [-2157, 145, -897]
# GroupIDs ([string])
    data modify storage asset:teleporter GroupIDs set value ["arena-56"]
# デフォルトの起動状態 ("InvisibleDeactivate" | "VisibleDeactivate" | "Activate")
    data modify storage asset:teleporter ActivationState set value "Activate"
# 色 ([int @ 0..255] @ 3)
    data modify storage asset:teleporter Color set value [255, 128, 128]
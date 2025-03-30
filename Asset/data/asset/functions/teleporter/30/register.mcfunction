#> asset:teleporter/30/register
#
# テレポーターの定義データ
#
# @within function asset:teleporter/30/


execute unless loaded -19 2 107 run return 1

# ID (int)
    data modify storage asset:teleporter ID set value 30
# Dimension (string[minecraft:dimension])
    data modify storage asset:teleporter Dimension set value "minecraft:overworld"
# Pos ([int] @ 3)
    data modify storage asset:teleporter Pos set value [-19, 2, 107]
# GroupIDs ([string])
    data modify storage asset:teleporter GroupIDs set value ["islands"]
# デフォルトの起動状態 ("InvisibleDeactivate" | "VisibleDeactivate" | "Activate")
    data modify storage asset:teleporter ActivationState set value "InvisibleDeactivate"
# 色 ([int @ 0..255] @ 3)
    data modify storage asset:teleporter Color set value [255, 255, 255]
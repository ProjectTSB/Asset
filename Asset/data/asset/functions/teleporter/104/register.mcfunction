#> asset:teleporter/104/register
#
# テレポーターの定義データ
#
# @within function asset:teleporter/104/


execute unless loaded -3948 2 -385 run return 1

# ID (int)
    data modify storage asset:teleporter ID set value 104
# Dimension (string[minecraft:dimension])
    data modify storage asset:teleporter Dimension set value "minecraft:overworld"
# Pos ([int] @ 3)
    data modify storage asset:teleporter Pos set value [-3948, 2, -385]
# GroupIDs ([string])
    data modify storage asset:teleporter GroupIDs set value ["arena-61"]
# デフォルトの起動状態 ("InvisibleDeactivate" | "VisibleDeactivate" | "Activate")
    data modify storage asset:teleporter ActivationState set value "Activate"
# 色 ([int @ 0..255] @ 3)
    data modify storage asset:teleporter Color set value [255, 128, 128]
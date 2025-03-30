#> asset:teleporter/300/register
#
# テレポーターの定義データ
#
# @within function asset:teleporter/300/


execute unless loaded 100 49 -17 run return 1

# ID (int)
    data modify storage asset:teleporter ID set value 300
# Dimension (string[minecraft:dimension])
    data modify storage asset:teleporter Dimension set value "minecraft:the_end"
# Pos ([int] @ 3)
    data modify storage asset:teleporter Pos set value [100, 49, -17]
# GroupIDs ([string])
    data modify storage asset:teleporter GroupIDs set value ["end", "islands-end"]
# デフォルトの起動状態 ("InvisibleDeactivate" | "VisibleDeactivate" | "Activate")
    data modify storage asset:teleporter ActivationState set value "VisibleDeactivate"
# 色 ([int @ 0..255] @ 3)
    data modify storage asset:teleporter Color set value [128, 255, 255]
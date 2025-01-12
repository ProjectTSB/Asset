#> asset:teleporter/303/register
#
# テレポーターの定義データ
#
# @within function asset:teleporter/303/


execute unless loaded 55 143 1963 run return 1

# ID (int)
    data modify storage asset:teleporter ID set value 303
# Dimension (string[minecraft:dimension])
    data modify storage asset:teleporter Dimension set value "minecraft:the_end"
# Pos ([int] @ 3)
    data modify storage asset:teleporter Pos set value [55, 143, 1963]
# GroupIDs ([string])
    data modify storage asset:teleporter GroupIDs set value ["end"]
# デフォルトの起動状態 ("InvisibleDeactivate" | "VisibleDeactivate" | "Activate")
    data modify storage asset:teleporter ActivationState set value "VisibleDeactivate"
# 色 ([int @ 0..255] @ 3)
    data modify storage asset:teleporter Color set value [255, 128, 255]
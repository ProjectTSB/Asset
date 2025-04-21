#> asset:teleporter/31/early_register
#
#
#
# @within tag/function asset:teleporter/early_register


# データ追加
    data modify storage asset:teleporter Teleporters append value {}
# ID (int)
    data modify storage asset:teleporter Teleporters[-1].ID set value 31
# Dimension (string[minecraft:dimension])
    data modify storage asset:teleporter Teleporters[-1].Data.Dimension set value "minecraft:overworld"
# Pos ([int] @ 3)
    data modify storage asset:teleporter Teleporters[-1].Data.Pos set value [-149, 49, -143]
# GroupIDs ([string])
    data modify storage asset:teleporter Teleporters[-1].Data.GroupIDs set value ["islands"]
# デフォルトの起動状態 ("InvisibleDeactivate" | "VisibleDeactivate" | "Activate")
    data modify storage asset:teleporter Teleporters[-1].Data.ActivationState set value "InvisibleDeactivate"
# 色 ([int @ 0..255] @ 3)
    data modify storage asset:teleporter Color set value [255, 255, 255]
    function asset:teleporter/common/calculate_and_insert_color_data
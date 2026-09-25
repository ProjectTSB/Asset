#> asset:mob/0189.water_mage/tick/summon/align_to_ground
#
#
#
# @within function
#   asset:mob/0189.water_mage/tick/summon/set_pos
#   asset:mob/0189.water_mage/tick/summon/align_to_ground

# 無限再帰防止用のデクリメント
    execute store result storage asset:temp RecursiveLimit int 0.9999999999 run data get storage asset:temp RecursiveLimit

# すぐ下がブロックならalignして召喚
    execute unless block ~ ~-1 ~ #lib:no_collision/without_fluid align y run function asset:mob/0189.water_mage/tick/summon/summon

# 再帰
    execute unless data storage asset:temp {RecursiveLimit:0} positioned ~ ~-1 ~ if block ~ ~ ~ #lib:no_collision/without_fluid run function asset:mob/0189.water_mage/tick/summon/align_to_ground

#> asset:mob/0461.nectar_plant/tick/summon_object/align_to_ground
#
#
#
# @within function
#   asset:mob/0461.nectar_plant/tick/summon_object/check
#   asset:mob/0461.nectar_plant/tick/summon_object/align_to_ground

# デクリメント
    execute store result storage asset:temp RecursiveLimit int 0.9999999999 run data get storage asset:temp RecursiveLimit

# 各条件を1つでも満たしたなら召喚
    # 再帰の上限
        execute if data storage asset:temp {RecursiveLimit:0} run return run function asset:mob/0461.nectar_plant/tick/summon_object/summon
    # 下がブロック
        execute unless block ~ ~-0.5 ~ #lib:no_collision/without_fluid run return run function asset:mob/0461.nectar_plant/tick/summon_object/summon

# 再帰
    execute positioned ~ ~-0.5 ~ run function asset:mob/0461.nectar_plant/tick/summon_object/align_to_ground

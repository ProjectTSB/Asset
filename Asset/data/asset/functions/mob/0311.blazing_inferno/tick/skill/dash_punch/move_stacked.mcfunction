#> asset:mob/0311.blazing_inferno/tick/skill/dash_punch/move_stacked
#
# moveファンクションをいっぱい実行する
#
# @within function asset:mob/0311.blazing_inferno/tick/skill/dash_punch/tick


# 移動
    execute at @s run function asset:mob/0311.blazing_inferno/tick/skill/dash_punch/move
    execute at @s run function asset:mob/0311.blazing_inferno/tick/skill/dash_punch/move
    execute at @s run function asset:mob/0311.blazing_inferno/tick/skill/dash_punch/move

# HP減ってるとちょっと速くなる
    execute at @s[tag=8N.Health.50Per] run function asset:mob/0311.blazing_inferno/tick/skill/dash_punch/move

# 燃やす
    execute if predicate api:area/is_breakable run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:fire",Properties:{age:"3"}},Time:1,DropItem:0b,HurtEntities:0b,Motion:[0.0,0.3,0.0]}

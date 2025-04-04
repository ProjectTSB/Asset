#> asset:mob/0060.self_destructor/count_down/
#
# 実行されるたびにカウントダウンを進める
#
# @within function
#   asset:mob/0060.self_destructor/attack/
#   asset:mob/0060.self_destructor/tick/force_explode

# カウントダウン
    scoreboard players remove @s 1O.ExplodeCnt 1

# playsound
    playsound minecraft:block.note_block.bit hostile @a ~ ~ ~ 1 1

# 自爆カウント表示を更新
    execute if score @s 1O.ExplodeCnt matches 2 on passengers run data modify entity @s text set value '{"text":"2","font":"damage"}'
    execute if score @s 1O.ExplodeCnt matches 1 on passengers run data modify entity @s text set value '{"text":"1","font":"damage"}'
    execute if score @s 1O.ExplodeCnt matches 0 on passengers run data modify entity @s text set value '{"text":"0","font":"damage"}'

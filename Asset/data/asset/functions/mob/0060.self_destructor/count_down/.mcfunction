#> asset:mob/0060.self_destructor/count_down/
#
# 実行されるたびにカウントダウンを進める
#
# @within function
#   asset:mob/0060.self_destructor/attack/
#   asset:mob/0060.self_destructor/tick/force_explode

# カウントダウン
    execute store result storage asset:context this.Countdown int 0.9999999999 run data get storage asset:context this.Countdown

# playsound
    playsound minecraft:block.note_block.bit hostile @a ~ ~ ~ 1 1

# 自爆カウント表示を更新
    execute if data storage asset:context this{Countdown:2} on passengers run data modify entity @s text set value '{"text":"2","font":"damage"}'
    execute if data storage asset:context this{Countdown:1} on passengers run data modify entity @s text set value '{"text":"1","font":"damage"}'
    execute if data storage asset:context this{Countdown:0} on passengers run data modify entity @s text set value '{"text":"0","font":"damage"}'

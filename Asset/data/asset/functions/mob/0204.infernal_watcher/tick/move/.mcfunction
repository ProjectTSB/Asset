#> asset:mob/0204.infernal_watcher/tick/move/
#
# 移動処理
#
# @within function asset:mob/0204.infernal_watcher/tick/

# のけぞり
    execute if score @s 5O.HurtTime matches 1 run data modify entity @s NoAI set value true
    execute if score @s 5O.HurtTime matches 1.. run scoreboard players remove @s 5O.HurtTime 1
    execute if score @s 5O.HurtTime matches 1.. if entity @s[tag=!5O.InFrenzy] run return fail

# 演出
    particle dust 0.761 0.267 0 1 ~ ~1.74 ~ 0.25 0.25 0.25 0 1 force @a[distance=..40]
    particle dust 0.792 0 0 1 ~ ~1.74 ~ 0.25 0.25 0.25 0 1 force @a[distance=..40]
    execute if entity @s[tag= 5O.InFrenzy] run particle flame ~ ~1.74 ~ 0.25 0.25 0.25 0 1
# 定数設定
    execute if entity @s[tag=!5O.InFrenzy] run data modify storage asset:temp 5O set value {Speed:0.2d,Range: 800}
    execute if entity @s[tag= 5O.InFrenzy] run data modify storage asset:temp 5O set value {Speed:0.5d,Range:1200}
# 実処理
    function asset:mob/0204.infernal_watcher/tick/move/do.m with storage asset:temp 5O
# リセット
    data remove storage asset:temp 5O

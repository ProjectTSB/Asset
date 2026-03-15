#> asset:mob/0204.infernal_watcher/tick/other/
#
# 演出とのけぞり
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

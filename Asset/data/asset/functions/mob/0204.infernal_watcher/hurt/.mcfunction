#> asset:mob/0204.infernal_watcher/hurt/
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/alias/204/hurt

playsound minecraft:entity.spider.step hostile @a[distance=..16] ~ ~ ~ 1.5 1.5
playsound minecraft:block.soul_sand.break hostile @a[distance=..16] ~ ~ ~ 1.5 0.75
particle block crimson_hyphae ~ ~1.68 ~ 0 0 0 0 25

execute if entity @s[tag=!5O.InFrenzy] run scoreboard players set @s 5O.HurtTime 20
data modify entity @s NoAI set value false

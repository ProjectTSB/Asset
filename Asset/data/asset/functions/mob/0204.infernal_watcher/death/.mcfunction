#> asset:mob/0204.infernal_watcher/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/alias/204/death

playsound minecraft:entity.spider.step hostile @a ~ ~ ~ 1.5 1.5
playsound minecraft:block.wart_block.break hostile @a ~ ~ ~ 1.5 1
playsound ogg:mob.blaze.breathe2 hostile @a ~ ~ ~ 1.5 1.5
particle block crimson_hyphae ~ ~1.68 ~ 0 0 0 0 25

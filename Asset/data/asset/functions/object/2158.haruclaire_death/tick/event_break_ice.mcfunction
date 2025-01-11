#> asset:object/2158.haruclaire_death/tick/event_break_ice
#
# Objectのtick時の処理
#
# @within asset:object/2158.haruclaire_death/tick/event

# 演出
    playsound minecraft:block.glass.break hostile @a ~ ~ ~ 1 1
    playsound minecraft:block.glass.break hostile @a ~ ~ ~ 1 0
    playsound block.amethyst_block.break hostile @a ~ ~ ~ 2 0.7
    playsound block.amethyst_block.break hostile @a ~ ~ ~ 2 0.7
    playsound block.amethyst_block.break hostile @a ~ ~ ~ 2 0.7
    playsound block.amethyst_block.break hostile @a ~ ~ ~ 2 0.9
    playsound block.amethyst_block.break hostile @a ~ ~ ~ 2 0.9
    playsound block.amethyst_block.break hostile @a ~ ~ ~ 2 0.9
    playsound block.amethyst_block.break hostile @a ~ ~ ~ 2 0.5
    playsound block.amethyst_block.break hostile @a ~ ~ ~ 2 0.5
    playsound block.amethyst_block.break hostile @a ~ ~ ~ 2 0.5
    particle dust 1 1000000000 1000000000 1 ~ ~2 ~ 1 2 1 1 300 normal @a
    particle dust 1000000000 1000000000 1000000000 1 ~ ~2 ~ 3 2 3 1 40 normal @a
    particle end_rod ~ ~1 ~ 0 0 0 0.5 30
    particle end_rod ~ ~1 ~ 0 0 0 0.2 30
    particle firework ~ ~3 ~ 3 3 3 0 50

# モデル削除
    function animated_java:haruclaire_aj/remove/this

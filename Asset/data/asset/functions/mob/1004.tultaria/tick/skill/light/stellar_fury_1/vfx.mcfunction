#> asset:mob/1004.tultaria/tick/skill/light/stellar_fury_1/vfx
#
# 召喚とは別で鳴らしたい演出なのかな
#
# @within function asset:mob/1004.tultaria/tick/skill/light/stellar_fury_1/tick

# 演出
    execute as @a[distance=..60] at @s run playsound minecraft:entity.evoker.cast_spell hostile @s ~ ~ ~ 2 0.7
    execute as @a[distance=..60] at @s run playsound minecraft:block.amethyst_block.break hostile @s ~ ~ ~ 2 1
    execute at @e[type=item_display,scores={ObjectID=2030},distance=..100] run particle end_rod ~ ~ ~ 0 0 0 0.1 1 force

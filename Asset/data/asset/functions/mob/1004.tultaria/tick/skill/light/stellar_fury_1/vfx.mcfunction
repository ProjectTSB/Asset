#> asset:mob/1004.tultaria/tick/skill/light/stellar_fury_1/vfx
#
# 召喚とは別で鳴らしたい演出なのかな
#
# @within function asset:mob/1004.tultaria/tick/skill/light/stellar_fury_1/tick

# 演出
    execute at @a[distance=..60] run playsound minecraft:entity.evoker.cast_spell hostile @a ~ ~ ~ 2 0.7
    execute at @a[distance=..60] run playsound minecraft:block.amethyst_block.break hostile @a ~ ~ ~ 2 1
    execute at @e[type=area_effect_cloud,tag=S2.Wait] run particle end_rod ~ ~ ~ 0 0 0 0.1 1 force

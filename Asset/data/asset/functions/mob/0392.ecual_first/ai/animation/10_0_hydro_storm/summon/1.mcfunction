#> asset:mob/0392.ecual_first/ai/animation/10_0_hydro_storm/summon/1
#
# 両手からハイドロ
#
# @within function asset:mob/0392.ecual_first/ai/animation/10_0_hydro_storm/

execute rotated ~90 0 positioned ^ ^1.5 ^1.5 run function asset:mob/0392.ecual_first/ai/projectile/hydro/0.summon
execute rotated ~-90 0 positioned ^ ^1.5 ^1.5 run function asset:mob/0392.ecual_first/ai/projectile/hydro/0.summon
tag @e[type=item_display,tag=AW.HydroStorm,distance=..8] add AW.HydroStormFirst

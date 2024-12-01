#> asset:mob/0378.red_night_v3/tick/90.tp/vfx
#
#
#
# @within function asset:mob/0378.red_night_v3/tick/90.tp/main

# 演出
    particle minecraft:explosion ~ ~ ~ 0.3 0 0.3 0 10
    particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.4 100
    playsound entity.lightning_bolt.impact hostile @a ~ ~ ~ 1 0
    playsound minecraft:entity.arrow.hit_player hostile @a ~ ~ ~ 1 1.6

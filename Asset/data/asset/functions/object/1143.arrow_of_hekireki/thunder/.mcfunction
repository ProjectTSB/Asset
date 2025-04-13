#> asset:object/1143.arrow_of_hekireki/thunder/
#
#
#
# @within function
#   asset:object/1143.arrow_of_hekireki/pre_hit/
#   asset:object/1143.arrow_of_hekireki/kill/

    particle dust 1 1 0 1 ~ ~3 ~ 0.7 3 0.7 0 100 force @a[distance=..40]
    particle dust 1 1 0 1 ~ ~5 ~ 0.1 5 0.1 0 100 force @a[distance=..40]
    particle minecraft:explosion ~ ~ ~ 0.3 0 0.3 0 10 force @a[distance=..40]
    particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.4 30 force @a[distance=..40]
    playsound entity.lightning_bolt.thunder neutral @a ~ ~ ~ 0.8 1.7 0
    playsound entity.lightning_bolt.impact neutral @a ~ ~ ~ 0.8 0 0

#> asset:mob/0213.terrible_sonic_bomber/tick/motions/summon_motion
#
# 
#
# @within function asset:mob/0213.terrible_sonic_bomber/tick/

# 爆発パーティクル
    particle minecraft:explosion ~ ~1 ~ 0.5 0.5 0.5 0 10

# 音
    playsound entity.generic.explode hostile @a[distance=..32] ~ ~ ~ 1 1 1

# AJ model召喚
    execute rotated ~ 0 run function animated_java:terrible_sonic_bomber/summon {args:{}}
    execute as @e[tag=5X.ModelRoot,limit=1] run function animated_java:terrible_sonic_bomber/animations/default/play

# phantomにride
    ride @e[tag=5X.ModelRoot,limit=1] mount @s

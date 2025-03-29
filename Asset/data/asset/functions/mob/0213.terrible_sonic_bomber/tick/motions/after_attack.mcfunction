#> asset:mob/0213.terrible_sonic_bomber/tick/motions/after_attack
#
# 
#
# @within function asset:mob/0213.terrible_sonic_bomber/tick/motions/attack_motion


# 機銃発射音
    execute if data storage asset:context Action{Selected:"gatling"} run playsound minecraft:entity.donkey.death hostile @a[distance=..128] ~ ~ ~ 8.0 0.7 1

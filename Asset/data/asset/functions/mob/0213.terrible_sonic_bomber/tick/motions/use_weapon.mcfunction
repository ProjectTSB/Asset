#> asset:mob/0213.terrible_sonic_bomber/tick/motions/use_weapon
#
# 
#
# @within function asset:mob/0213.terrible_sonic_bomber/tick/motions/attack_motion

#> prv
# @private
    #declare score_holder $use_weapon

#発射
    execute store result score $use_weapon Temporary run data get storage asset:context this.use_weapon

    execute if score $use_weapon Temporary matches 1 run function asset:mob/0213.terrible_sonic_bomber/tick/weapons/storm_shadow
    execute if score $use_weapon Temporary matches 2 run function asset:mob/0213.terrible_sonic_bomber/tick/weapons/brimstone
    execute if score $use_weapon Temporary matches 3 run function asset:mob/0213.terrible_sonic_bomber/tick/weapons/drone
    execute if score $use_weapon Temporary matches 4 run function asset:mob/0213.terrible_sonic_bomber/tick/weapons/snakeeye
    execute if score $use_weapon Temporary matches -4 run function asset:mob/0213.terrible_sonic_bomber/tick/weapons/gatling

# reset
    scoreboard players reset $use_weapon Temporary

#> asset:mob/0213.terrible_sonic_bomber/tick/motions/use_weapon
#
# 
#
# @within function asset:mob/0213.terrible_sonic_bomber/tick/motions/attack_motion

#> prv
# @private
    #declare score_holder $use_weapon

#発射
    #execute store result score $use_weapon Temporary run data get storage asset:context this.use_weapon

    #execute if score $use_weapon Temporary matches 1 run function asset:mob/0213.terrible_sonic_bomber/tick/weapons/storm_shadow
    #execute if score $use_weapon Temporary matches 2 run function asset:mob/0213.terrible_sonic_bomber/tick/weapons/brimstone
    #execute if score $use_weapon Temporary matches 3 run function asset:mob/0213.terrible_sonic_bomber/tick/weapons/drone
    #execute if score $use_weapon Temporary matches 4 run function asset:mob/0213.terrible_sonic_bomber/tick/weapons/snakeeye
    #execute if score $use_weapon Temporary matches -4 run function asset:mob/0213.terrible_sonic_bomber/tick/weapons/gatling
    #execute if score $use_weapon Temporary matches 5 run function asset:mob/0213.terrible_sonic_bomber/tick/weapons/landmine
    execute if data storage asset:context Action{Selected:"storm_shadow"} run function asset:mob/0213.terrible_sonic_bomber/tick/weapons/storm_shadow
    execute if data storage asset:context Action{Selected:"brimstone"} run function asset:mob/0213.terrible_sonic_bomber/tick/weapons/brimstone
    execute if data storage asset:context Action{Selected:"drone"} run function asset:mob/0213.terrible_sonic_bomber/tick/weapons/drone
    execute if data storage asset:context Action{Selected:"snake_eye"} run function asset:mob/0213.terrible_sonic_bomber/tick/weapons/snakeeye
    execute if data storage asset:context Action{Selected:"gatling"} run function asset:mob/0213.terrible_sonic_bomber/tick/weapons/gatling
    execute if data storage asset:context Action{Selected:"landmine"} run function asset:mob/0213.terrible_sonic_bomber/tick/weapons/landmine

# 最終使用武器更新
    data modify storage asset:context Action.LastUse set from storage asset:context Action.Selected

# reset
    #scoreboard players reset $use_weapon Temporary

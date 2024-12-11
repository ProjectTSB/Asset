#> asset:mob/0213.terrible_sonic_bomber/tick/use_weapon
#
# 
#
# @within function asset:mob/0213.terrible_sonic_bomber/tick/attack_motion

#> prv
# @private
   #declare score_holder $use_waapon

#発射
execute store result score $use_waapon Temporary run data get storage asset:context this.use_weapon

execute if score $use_waapon Temporary matches 1 run function asset:mob/0213.terrible_sonic_bomber/tick/weapons/storm_shadow
execute if score $use_waapon Temporary matches 2 run function asset:mob/0213.terrible_sonic_bomber/tick/weapons/brimstone
execute if score $use_waapon Temporary matches 3 run function asset:mob/0213.terrible_sonic_bomber/tick/weapons/drone

# reset
scoreboard players reset $use_waapon Temporary

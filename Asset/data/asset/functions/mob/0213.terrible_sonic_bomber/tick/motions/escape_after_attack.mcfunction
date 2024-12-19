#> asset:mob/0213.terrible_sonic_bomber/tick/motions/escape_after_attack
#
# 
#
# @within function asset:mob/0213.terrible_sonic_bomber/tick/motions/attack_motion

#> prv
# @private
   #declare score_holder $use_weapon

#離脱
execute store result score $use_weapon Temporary run data get storage asset:context this.use_weapon

execute if score $use_weapon Temporary matches 1 run tp @s ~ ~ ~ ~60 ~
execute if score $use_weapon Temporary matches 2 run tp @s ~ ~ ~ ~ ~
execute if score $use_weapon Temporary matches 3 run tp @s ~ ~ ~ ~ ~
execute if score $use_weapon Temporary matches 4 run tp @s ~ ~ ~ ~ ~

# reset
scoreboard players reset $use_weapon Temporary

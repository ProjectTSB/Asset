#> asset:mob/0213.terrible_sonic_bomber/tick/escape_after_attack
#
# 
#
# @within function asset:mob/0213.terrible_sonic_bomber/tick/attack_motion

#> prv
# @private
   #declare score_holder $use_waapon

#離脱
execute store result score $use_waapon Temporary run data get storage asset:context this.use_weapon

execute if score $use_waapon Temporary matches 1 run tp @s ~ ~ ~ ~60 ~
execute if score $use_waapon Temporary matches 2 run tp @s ~ ~ ~ ~ ~
execute if score $use_waapon Temporary matches 3 run tp @s ~ ~ ~ ~ ~

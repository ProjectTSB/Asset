#> asset:mob/0213.terrible_sonic_bomber/tick/weapons/storm_shadow
#
# 
#
# @within function asset:mob/0213.terrible_sonic_bomber/tick/use_weapon

#> prv
# @private
   #declare score_holder $attack_start_time


# オブジェクト召喚
data modify storage api: Argument.FieldOverride.target_pos set from storage asset:context this.storm_shadow.target_pos
data modify storage api: Argument.ID set value 2082
execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
function api:object/summon

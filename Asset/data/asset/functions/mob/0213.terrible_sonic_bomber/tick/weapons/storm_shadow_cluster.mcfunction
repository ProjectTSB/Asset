#> asset:mob/0213.terrible_sonic_bomber/tick/weapons/storm_shadow_cluster
#
# 
#
# @within function asset:mob/0213.terrible_sonic_bomber/tick/motions/use_weapon

#> prv
# @private
    #declare score_holder $attack_start_time

# オブジェクト召喚
    data modify storage api: Argument.FieldOverride.target_pos set from storage asset:context this.storm_shadow.target_pos
    data modify storage api: Argument.FieldOverride.GroundPos set from storage asset:context this.GroundPos
    data modify storage api: Argument.ID set value 2086
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    function api:object/summon

# reset
    scoreboard players reset $attack_start_time Temporary

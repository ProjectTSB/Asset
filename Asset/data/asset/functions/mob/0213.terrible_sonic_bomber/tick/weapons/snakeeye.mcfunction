#> asset:mob/0213.terrible_sonic_bomber/tick/weapons/snakeeye
#
# 
#
# @within function asset:mob/0213.terrible_sonic_bomber/tick/motions/use_weapon

#> prv
# @private
    #declare score_holder $attack_start_time

# オブジェクト召喚
    data modify storage api: Argument.ID set value 2084
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.detonation_safe_time set from storage asset:context this.detonation_safe_time
    execute positioned ^2 ^ ^ run function api:object/summon

    data modify storage api: Argument.ID set value 2084
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.detonation_safe_time set from storage asset:context this.detonation_safe_time
    execute positioned ^-2 ^ ^ run function api:object/summon

# 次回攻撃開始時間指定
    execute store result score $attack_start_time Temporary run time query gametime
    execute store result storage asset:context this.attack_start_time int 1 run scoreboard players add $attack_start_time Temporary 4

# reset
    scoreboard players reset $attack_start_time Temporary

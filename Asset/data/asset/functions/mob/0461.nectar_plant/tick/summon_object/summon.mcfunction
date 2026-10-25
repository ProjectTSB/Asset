#> asset:mob/0461.nectar_plant/tick/summon_object/summon
#
#
#
# @within function
#   asset:mob/0461.nectar_plant/tick/summon_object/check
#   asset:mob/0461.nectar_plant/tick/summon_object/align_to_ground

#> Private
# @private
    #declare score_holder $Heal
    #declare score_holder $Difficulty

# 回復量計算
    function api:global_vars/get_difficulty
    execute store result score $Difficulty Temporary run data get storage api: Return.Difficulty
    execute store result score $Heal Temporary run data get storage asset:context this.Heal
    execute store result storage api: Argument.FieldOverride.Heal int 1 run scoreboard players operation $Heal Temporary *= $Difficulty Temporary

# 近くのプレイヤーへ座標攻撃
    data modify storage api: Argument.ID set value 2278
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.FieldOverride.Tick set from storage asset:context this.Delay
    data modify storage api: Argument.FieldOverride.Metadata set from storage asset:context this.Metadata
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    function api:object/summon

# リセット
    scoreboard players reset $Heal Temporary
    scoreboard players reset $Difficulty Temporary

#> asset:artifact/1311.yearning_rose/damage_from_entity/heal
#
#
#
# @within function asset:artifact/1311.yearning_rose/damage_from_entity/3.main

#> Private
# @private
    #declare score_holder $Heal
    #declare score_holder $HealMax

# 被ダメ比例回復量(e2)
    execute store result score $Heal Temporary run data get storage asset:context Damage.Amount 300

# 回復上限(e2)
    scoreboard players set $HealMax Temporary 2000

# 回復
    execute store result storage api: Argument.Heal float 0.001 run scoreboard players get $Heal Temporary
    data modify storage api: Argument.Metadata set value "10F.Heal"
    function api:heal/modifier
    function api:heal/
    function api:heal/reset

# リセット
    scoreboard players reset $Heal Temporary
    scoreboard players reset $HealMax Temporary

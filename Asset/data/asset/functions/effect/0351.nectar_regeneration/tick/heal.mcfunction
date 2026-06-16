#> asset:effect/0351.nectar_regeneration/tick/heal
#
#
#
# @within function asset:effect/0351.nectar_regeneration/tick/

#> Private
# @private
    #declare score_holder $HealPer
    #declare score_holder $MaxHealth

# 数値取得
    execute store result score $HealPer Temporary run data get storage asset:context this.HealPer 10000
    execute store result score $MaxHealth Temporary run attribute @s generic.max_health get

# 回復
    execute store result storage api: Argument.Heal double 0.0001 run scoreboard players operation $HealPer Temporary *= $MaxHealth Temporary
    data modify storage api: Argument.ApplyTrigger set value false
    function api:heal/modifier
    function api:heal/
    function api:heal/reset

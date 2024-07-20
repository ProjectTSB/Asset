#> asset:effect/0615.ice_curse/tick/damage
#
# スリップダメージ
#
# @within function asset:effect/0615.ice_curse/tick/

#> Private
# @private
    #declare score_holder $Damage

# 演出
    particle snowflake ~ ~0.5 ~ 0.2 0.4 0.2 0.1 20 normal @a
    playsound block.glass.break player @a ~ ~ ~ 0.4 1.8 0

# 2(N+1)ダメージ
    execute store result score $Damage Temporary run data get storage asset:context Stack
    scoreboard players add $Damage Temporary 1

# 魔法水属性ダメージ
# プレイヤーの補正がかからないように、でも属性耐性は考慮するように
# TODO：いつか適切な方法が出来たら処理を書き換える
    execute store result storage api: Argument.Damage int 2 run scoreboard players get $Damage Temporary
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Water"
    data modify storage api: Argument.BypassModifier set value true
    function api:damage/modifier
    data modify storage api: Argument.BypassModifier set value false
    function api:damage/
    function api:damage/reset

# リセット
    scoreboard players reset $Damage Temporary

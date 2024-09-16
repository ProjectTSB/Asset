#> asset:effect/0215.purification/modifier/add
#
# バフを付与する
#
# @within function asset:effect/0215.purification/given/

#> Private
# @private
    #declare score_holder $EffectValue

# 各バフの効果量 = (2 * [lv] - 1)%
# バフの効果量をスタックから算出
    execute store result score $EffectValue Temporary run data get storage asset:context Stack 2
    scoreboard players remove $EffectValue Temporary 1

# 物理攻撃
    data modify storage api: Argument.UUID set value [I;1,3,215,0]
    execute store result storage api: Argument.Amount double 0.01 run scoreboard players get $EffectValue Temporary
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/attack/physical/add

# 魔法攻撃
    data modify storage api: Argument.UUID set value [I;1,3,215,0]
    execute store result storage api: Argument.Amount double 0.01 run scoreboard players get $EffectValue Temporary
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/attack/magic/add

# 攻撃速度
    execute store result storage asset:temp Effect.Value double 0.01 run scoreboard players get $EffectValue Temporary
    function asset:effect/0215.purification/modifier/add.m with storage asset:temp Effect

# リセット
    scoreboard players reset $EffectValue Temporary
    data remove storage asset:temp Effect

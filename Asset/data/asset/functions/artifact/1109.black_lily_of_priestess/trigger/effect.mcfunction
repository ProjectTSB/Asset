#> asset:artifact/1109.black_lily_of_priestess/trigger/effect
#
#
#
# @within function asset:artifact/1109.black_lily_of_priestess/trigger/3.main

#> Private
# @private
    #declare score_holder $MaxStack 調整班用にここで設定しておく

# スタック最大値
    scoreboard players set $MaxStack Temporary 5

# Stackをデバフ数にしておく
    execute store result storage api: Argument.Stack int 1 run scoreboard players operation $UT.DebuffCount Temporary < $MaxStack Temporary

# 調整班用効果量設定
    # 効果時間
        data modify storage api: Argument.Duration set value 200
    # 攻撃補正
        execute store result storage api: Argument.FieldOverride.Modifier.Attack float 0.02 run scoreboard players get $UT.DebuffCount Temporary
    # 与回復補正
        execute store result storage api: Argument.FieldOverride.Modifier.Heal float -0.04 run scoreboard players get $UT.DebuffCount Temporary

# 付与
    data modify storage api: Argument.ID set value 342
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# リセット
    scoreboard players reset $MaxStack Temporary

#> asset:artifact/1109.black_lily_of_priestess/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1109.black_lily_of_priestess/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/hotbar

# ここから先は神器側の効果の処理を書く

#> Private
# @private
    #declare score_holder $MaxStack 調整班用にここで設定しておく

# スタック最大値
    scoreboard players set $MaxStack Temporary 4

# 調整班用効果量設定
    # 効果時間
        data modify storage api: Argument.Duration set value 200
    # 攻撃補正
        data modify storage api: Argument.FieldOverride.Modifier.Attack set value 0.025
    # 被回復補正
        data modify storage api: Argument.FieldOverride.Modifier.ReceiveHeal set value -0.05

# Stackをデバフ数にしておく
    execute store result storage api: Argument.Stack int 1 run scoreboard players operation $UT.DebuffCount Temporary < $MaxStack Temporary

# 付与
    data modify storage api: Argument.ID set value 342
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# リセット
    scoreboard players reset $MaxStack Temporary

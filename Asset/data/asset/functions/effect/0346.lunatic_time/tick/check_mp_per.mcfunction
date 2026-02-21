#> asset:effect/0346.lunatic_time/tick/check_mp_per
#
# MPが一定割合以下ならエフェクトを解除する
#
# @within function asset:effect/0346.lunatic_time/tick/

#> Private
# @private
    #declare score_holder $MPPer
    #declare score_holder $NeedMPPer

# 必要な値を取得
    function api:entity/player/get_mp_per
    execute store result score $MPPer Temporary run data get storage api: Return.MPPer 100
    execute store result score $NeedMPPer Temporary run data get storage asset:context this.NeedMPPer 100

# 比較して、$MPPer < $NeedMPPerならエフェクトを解除する
    execute if score $MPPer Temporary < $NeedMPPer Temporary run data modify storage asset:context Duration set value 0

# リセット
    scoreboard players reset $MPPer Temporary
    scoreboard players reset $NeedMPPer Temporary

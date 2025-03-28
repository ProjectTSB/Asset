#> asset:artifact/1207.quadrainbow_icequality/trigger/solve_inequality
#
# 
#
# @within function asset:artifact/1207.quadrainbow_icequality/trigger/2.check_condition

#> prv
#> @private
    #declare score_holder $XJ.Eval

# 初期値設定
    scoreboard players set $XJ.Eval Temporary 0

# 体力割合を取得
    function api:entity/player/get_health_per
    execute store result score $XJ.HealthPer Temporary run data get storage api: Return.HealthPer 100

# MP割合を取得
    function api:entity/player/get_mp_per
    execute store result score $XJ.MPPer Temporary run data get storage api: Return.MPPer 100

# 不等式計算
    scoreboard players operation $XJ.Eval Temporary = $XJ.MPPer Temporary
    scoreboard players operation $XJ.Eval Temporary *= $XJ.Eval Temporary
    scoreboard players operation $XJ.Eval Temporary *= $-12 Const
    scoreboard players operation $XJ.Eval Temporary /= $1000 Const
    scoreboard players add $XJ.Eval Temporary 130

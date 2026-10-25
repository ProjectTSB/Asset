#> asset:artifact/1332.bebebeam/trigger/loop/main
#
#
#
# @within function asset:artifact/1332.bebebeam/trigger/loop/

#> Private
# @private
    #declare score_holder $110.Interval

# Tickのインクリメント
    scoreboard players add @s 110.Tick 1

# Ntickに1回発射
    scoreboard players operation $110.Interval Temporary = @s 110.Tick
    scoreboard players operation $110.Interval Temporary %= $4 Const
    execute if score $110.Interval Temporary matches 0 run function asset:artifact/1332.bebebeam/trigger/beam/
    scoreboard players reset $110.Interval Temporary

# Countが0ならリセット
    execute if score @s 110.Count matches ..0 run function asset:artifact/1332.bebebeam/trigger/reset

# ループ
    schedule function asset:artifact/1332.bebebeam/trigger/loop/ 1t replace

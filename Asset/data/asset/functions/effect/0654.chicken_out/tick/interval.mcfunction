#> asset:effect/0654.chicken_out/tick/interval
#
# インターバル処理
#
# @within function asset:effect/0654.chicken_out/tick/

# 実行時間を移す
    scoreboard players operation $Interval Temporary = @s 0654.Tick

# 10tickごとに処理を実行
    scoreboard players operation $Interval Temporary %= $10 Const
    execute if score $Interval Temporary matches 0 run function asset:effect/0654.chicken_out/tick/damage

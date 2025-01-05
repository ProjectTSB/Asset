#> asset:object/2031.giant_pumpkin/tick/high_speed_spin
#
#
#
# @within function asset:object/2031.giant_pumpkin/tick/

# 演出
    particle dust 1 0.6 0 1.3 ~ ~ ~ 0.8 0.8 0.8 0 3 force @a[distance=..64]
    particle dust 0.851 0 1 1.3 ~ ~ ~ 0.8 0.8 0.8 0 3 force @a[distance=..64]
    particle block carved_pumpkin ~ ~-1 ~ 0.8 0 0.8 0 10 force @a[distance=..64]
    playsound entity.breeze.shoot hostile @a ~ ~ ~ 0.25 2

# 一定間隔で実行
    scoreboard players operation $Interval Temporary = @s General.Object.Tick
    scoreboard players operation $Interval Temporary %= $3 Const

# 縦回転する
    execute if score $Interval Temporary matches 0 run function asset:object/2031.giant_pumpkin/tick/set_spin

# リセット
    scoreboard players reset $Interval Temporary

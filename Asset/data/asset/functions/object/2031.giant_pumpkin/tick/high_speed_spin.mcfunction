#> asset:object/2031.giant_pumpkin/tick/high_speed_spin
#
#
#
# @within function asset:object/2031.giant_pumpkin/tick/

# 一定間隔で実行
    scoreboard players operation $Interval Temporary = @s General.Object.Tick
    scoreboard players operation $Interval Temporary %= $12 Const
    scoreboard players operation $Interval2 Temporary = $Interval Temporary
    scoreboard players operation $Interval2 Temporary %= $3 Const

# 縦回転する
    execute if score $Interval2 Temporary matches 0 run data modify entity @s start_interpolation set value 0
    execute if score $Interval Temporary matches 0 run data modify entity @s transformation set value [2.0f,0.0f,0.0f,0.0f,0.0f,-0.0f,2.0f,0.0f,0.0f,-2.0f,-0.0f,0.0f,0.0f,0.0f,0.0f,1.0f]
    execute if score $Interval Temporary matches 3 run data modify entity @s transformation set value [2.0f,0.0f,0.0f,0.0f,0.0f,2.0f,0.0f,0.0f,0.0f,0.0f,2.0f,0.0f,0.0f,0.0f,0.0f,1.0f]
    execute if score $Interval Temporary matches 6 run data modify entity @s transformation set value [2.0f,0.0f,0.0f,0.0f,0.0f,-0.0f,-2.0f,0.0f,0.0f,2.0f,-0.0f,0.0f,0.0f,0.0f,0.0f,1.0f]
    execute if score $Interval Temporary matches 9 run data modify entity @s transformation set value [2.0f,0.0f,0.0f,0.0f,0.0f,-2.0f,0.0f,0.0f,0.0f,-0.0f,-2.0f,0.0f,0.0f,0.0f,0.0f,1.0f]

#> asset:object/2031.giant_pumpkin/tick/high_speed_spin
#
#
#
# @within function asset:object/2031.giant_pumpkin/tick/

# 演出
    playsound entity.breeze.shoot hostile @a ~ ~ ~ 0.5 2

# 羊毛を破壊する
    execute if predicate world_manager:area/02.islands positioned ^ ^ ^0.5 if block ~ ~ ~ #wool run setblock ~ ~ ~ air destroy
    execute if predicate world_manager:area/02.islands positioned ^1 ^ ^0.5 if block ~ ~ ~ #wool run setblock ~ ~ ~ air destroy
    execute if predicate world_manager:area/02.islands positioned ^-1 ^ ^0.5 if block ~ ~ ~ #wool run setblock ~ ~ ~ air destroy
    execute if predicate world_manager:area/02.islands positioned ^ ^1 ^0.5 if block ~ ~ ~ #wool run setblock ~ ~ ~ air destroy
    execute if predicate world_manager:area/02.islands positioned ^1 ^1 ^0.5 if block ~ ~ ~ #wool run setblock ~ ~ ~ air destroy
    execute if predicate world_manager:area/02.islands positioned ^-1 ^1 ^0.5 if block ~ ~ ~ #wool run setblock ~ ~ ~ air destroy
    execute if predicate world_manager:area/02.islands positioned ^ ^-1 ^0.5 if block ~ ~ ~ #wool run setblock ~ ~ ~ air destroy
    execute if predicate world_manager:area/02.islands positioned ^1 ^-1 ^0.5 if block ~ ~ ~ #wool run setblock ~ ~ ~ air destroy
    execute if predicate world_manager:area/02.islands positioned ^-1 ^-1 ^0.5 if block ~ ~ ~ #wool run setblock ~ ~ ~ air destroy

# 一定間隔で実行
    scoreboard players operation $Interval Temporary = @s General.Object.Tick
    scoreboard players operation $Interval Temporary %= $3 Const

# 縦回転する
    execute if score $Interval Temporary matches 0 run data modify entity @s start_interpolation set value 0
    execute if score $Interval Temporary matches 0 run function asset:object/2031.giant_pumpkin/tick/set_spin

# リセット
    scoreboard players reset $Interval Temporary

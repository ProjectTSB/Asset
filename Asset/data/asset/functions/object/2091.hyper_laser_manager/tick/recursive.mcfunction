#> asset:object/2091.hyper_laser_manager/tick/recursive
#
#
#
# @within function
#   asset:object/2091.hyper_laser_manager/tick/shoot
#   asset:object/2091.hyper_laser_manager/tick/recursive

# 演出
    particle soul_fire_flame ~ ~ ~ 0.1 0.1 0.1 0.08 2 normal @a
    particle soul_fire_flame ^ ^ ^0.25 0.1 0.1 0.1 0.08 2 normal @a
    particle soul ~ ~ ~ 0 0 0 0.25 3 normal @a

# 一定間隔での演出
    scoreboard players operation $Interval Temporary = $Recursive Temporary
    scoreboard players operation $Interval Temporary %= $5 Const
    execute if score $Interval Temporary matches 0 run particle sonic_boom ~ ~ ~ 0 0 0 0 1
    scoreboard players reset $Interval Temporary

# 再帰スコア
    scoreboard players add $Recursive Temporary 1

# 再帰
    execute if score $Recursive Temporary matches ..60 positioned ^ ^ ^0.5 run function asset:object/2091.hyper_laser_manager/tick/recursive

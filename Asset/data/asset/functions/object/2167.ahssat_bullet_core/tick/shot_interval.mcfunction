#> asset:object/2167.ahssat_bullet_core/tick/shot_interval
#
#
#
# @within function asset:object/2167.ahssat_bullet_core/tick/

# 5tick毎に発射
    scoreboard players operation $Interval Temporary = @s General.Object.Tick
    scoreboard players operation $Interval Temporary %= $5 Const
    execute if score $Interval Temporary matches 0 run function asset:object/2167.ahssat_bullet_core/tick/spread
    scoreboard players reset $Interval Temporary

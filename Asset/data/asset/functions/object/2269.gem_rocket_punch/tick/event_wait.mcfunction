#> asset:object/2269.gem_rocket_punch/tick/event_wait
#
# Objectのtick時の処理
#
# @within asset:object/2269.gem_rocket_punch/tick/

# 出現処理
    execute if score @s General.Object.Tick matches 1 run tp @s ^ ^-10 ^-51
    execute if score @s General.Object.Tick matches 3 run data modify entity @s start_interpolation set value -1
    execute if score @s General.Object.Tick matches 3 run data modify entity @s transformation.scale set value [8.0f,8.0f,8.0f]
    execute if score @s General.Object.Tick matches 3..20 run tp @s ^ ^ ^3
    execute if score @s General.Object.Tick matches 21..25 run tp @s ^ ^ ^1 ~ ~-25
    execute if score @s General.Object.Tick matches 26..30 run tp @s ^ ^ ^1 ~ ~-15
    execute if score @s General.Object.Tick matches 31..34 run tp @s ^ ^ ^0.5 ~ ~3
    execute if score @s General.Object.Tick matches 35..46 run tp @s ^ ^ ^0.3 ~ ~7
    execute if score @s General.Object.Tick matches 47 run tp @s ^ ^ ^ ~ 0

# 演出
    execute if score @s General.Object.Tick matches 46 at @s run playsound block.piston.extend hostile @a ~ ~ ~ 2 0.9

# 攻撃開始
    execute if score @s General.Object.Tick matches 47.. if score @s General.Object.Tick >= @s 2269.WaitTime run function asset:object/2269.gem_rocket_punch/tick/start_attack

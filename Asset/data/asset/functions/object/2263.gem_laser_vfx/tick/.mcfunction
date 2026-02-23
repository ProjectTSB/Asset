#> asset:object/2263.gem_laser_vfx/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2263/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 拡大
    execute if score @s General.Object.Tick matches 3 run data modify entity @s start_interpolation set value -1
    execute if score @s General.Object.Tick matches 3 run data modify entity @s transformation.scale set value [5.0f,5.0f,100.0f]
    execute if score @s General.Object.Tick matches 8 run data modify entity @s start_interpolation set value -1
    execute if score @s General.Object.Tick matches 8 run data modify entity @s transformation.scale set value [0.0f,0.0f,100.0f]
    execute if score @s General.Object.Tick matches 3..12 run particle flash ~ ~ ~ 0 0 0 0 1

# 移動
    execute if entity @s[tag=2263.IsRight] unless entity @s[tag=2263.IsShot] if score @s General.Object.Tick matches 3.. run tp @s ~ ~ ~ ~35 ~
    execute unless entity @s[tag=2263.IsRight] unless entity @s[tag=2263.IsShot] if score @s General.Object.Tick matches 3.. run tp @s ~ ~ ~ ~-35 ~
    execute unless entity @s[tag=2263.IsShot] if score @s General.Object.Tick matches 3..5 at @s run tp @s ~ ~ ~ ~ ~-4
    execute unless entity @s[tag=2263.IsShot] if score @s General.Object.Tick matches 12..14 at @s run tp @s ~ ~ ~ ~ ~4

# 消滅処理
    kill @s[scores={General.Object.Tick=14..}]

#> asset:object/2269.gem_rocket_punch/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2269/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

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

# 移動
    execute if score @s General.Object.Tick matches 109 run tp @s ~ ~0.1 ~ ~ ~-4
    execute if score @s General.Object.Tick matches 110 run tp @s ~ ~-0.2 ~ ~ ~8
    execute if score @s General.Object.Tick matches 111 run tp @s ~ ~0.1 ~ ~ ~-4
    execute if score @s General.Object.Tick matches 109..122 at @s run tp @s ^ ^0.05 ^-0.05
    execute if score @s General.Object.Tick matches 133..136 at @s run tp @s ~ ~ ~ ~ ~1
    execute if score @s General.Object.Tick matches 140..145 at @s run tp @s ~ ~ ~ ~ ~-1
    execute if score @s General.Object.Tick matches 146..155 at @s run tp @s ~ ~ ~ ~ ~-7
    execute if score @s General.Object.Tick matches 156.. at @s run tp @s ~ ~ ~ ~ ~-15
    execute if score @s General.Object.Tick matches 133.. at @s run tp @s ^ ^ ^5
    execute if score @s General.Object.Tick matches 133.. run particle soul_fire_flame ~ ~ ~ 0.1 0.1 0.1 0.05 3
    execute if score @s General.Object.Tick matches 133.. run particle cloud ~ ~ ~ 0.1 0.1 0.1 0.05 3

# 攻撃
    execute if score @s General.Object.Tick matches 90 positioned ~ ~-3 ~ rotated ~ 0 run function asset:object/2269.gem_rocket_punch/tick/prediction
    execute if score @s General.Object.Tick matches 133 at @s run function asset:object/2269.gem_rocket_punch/tick/damage
    execute if score @s General.Object.Tick matches 135 at @s run function asset:object/2269.gem_rocket_punch/tick/damage
    execute if score @s General.Object.Tick matches 137 at @s run function asset:object/2269.gem_rocket_punch/tick/damage
    execute if score @s General.Object.Tick matches 139 at @s run function asset:object/2269.gem_rocket_punch/tick/damage
    execute if score @s General.Object.Tick matches 141 at @s run function asset:object/2269.gem_rocket_punch/tick/damage
    execute if score @s General.Object.Tick matches 143 at @s run function asset:object/2269.gem_rocket_punch/tick/damage
    execute if score @s General.Object.Tick matches 145 at @s run function asset:object/2269.gem_rocket_punch/tick/damage

# 演出
    execute if score @s General.Object.Tick matches 46 at @s run playsound block.piston.extend hostile @a ~ ~ ~ 2 0.9
    execute if score @s General.Object.Tick matches 109 at @s run playsound block.piston.extend hostile @a ~ ~ ~ 2 0.9
    execute if score @s General.Object.Tick matches 133 at @s run playsound entity.firework_rocket.launch hostile @a ~ ~ ~ 2 0.9

# 消滅処理
    execute if score @s General.Object.Tick matches 177 run data modify entity @s start_interpolation set value -1
    execute if score @s General.Object.Tick matches 177 run data modify entity @s transformation.scale set value [0.0f,0.0f,0.0f]
    kill @s[scores={General.Object.Tick=180..}]

#> asset:object/2269.gem_rocket_punch/tick/event_attack
#
# Objectのtick時の処理
#
# @within asset:object/2269.gem_rocket_punch/tick/

# 移動
    execute if score @s General.Object.Tick matches 209 run tp @s ~ ~0.1 ~ ~ ~-4
    execute if score @s General.Object.Tick matches 210 run tp @s ~ ~-0.2 ~ ~ ~8
    execute if score @s General.Object.Tick matches 211 run tp @s ~ ~0.1 ~ ~ ~-4
    execute if score @s General.Object.Tick matches 209..222 at @s run tp @s ^ ^0.05 ^-0.05
    execute if score @s General.Object.Tick matches 233..236 at @s run tp @s ~ ~ ~ ~ ~1
    execute if score @s General.Object.Tick matches 240..245 at @s run tp @s ~ ~ ~ ~ ~-1
    execute if score @s General.Object.Tick matches 246..255 at @s run tp @s ~ ~ ~ ~ ~-7
    execute if score @s General.Object.Tick matches 256.. at @s run tp @s ~ ~ ~ ~ ~-15
    execute if score @s General.Object.Tick matches 233.. at @s run tp @s ^ ^ ^5
    execute if score @s General.Object.Tick matches 233.. run particle soul_fire_flame ~ ~ ~ 0.1 0.1 0.1 0.05 3
    execute if score @s General.Object.Tick matches 233.. run particle cloud ~ ~ ~ 0.1 0.1 0.1 0.05 3

# 攻撃
    execute if score @s General.Object.Tick matches 190 positioned ~ ~-3 ~ rotated ~ 0 run function asset:object/2269.gem_rocket_punch/tick/prediction
    execute if score @s General.Object.Tick matches 233 at @s run function asset:object/2269.gem_rocket_punch/tick/damage
    execute if score @s General.Object.Tick matches 235 at @s run function asset:object/2269.gem_rocket_punch/tick/damage
    execute if score @s General.Object.Tick matches 237 at @s run function asset:object/2269.gem_rocket_punch/tick/damage
    execute if score @s General.Object.Tick matches 239 at @s run function asset:object/2269.gem_rocket_punch/tick/damage
    execute if score @s General.Object.Tick matches 241 at @s run function asset:object/2269.gem_rocket_punch/tick/damage
    execute if score @s General.Object.Tick matches 243 at @s run function asset:object/2269.gem_rocket_punch/tick/damage
    execute if score @s General.Object.Tick matches 245 at @s run function asset:object/2269.gem_rocket_punch/tick/damage

# 演出
    execute if score @s General.Object.Tick matches 209 at @s run playsound block.piston.extend hostile @a ~ ~ ~ 2 0.9
    execute if score @s General.Object.Tick matches 233 at @s run playsound entity.firework_rocket.launch hostile @a ~ ~ ~ 2 0.9

# 消滅処理
    execute if score @s General.Object.Tick matches 277 run data modify entity @s start_interpolation set value -1
    execute if score @s General.Object.Tick matches 277 run data modify entity @s transformation.scale set value [0.0f,0.0f,0.0f]
    kill @s[scores={General.Object.Tick=280..}]

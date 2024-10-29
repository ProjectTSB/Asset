#> asset:object/2010.hexa_laser/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2010/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 音
    execute if score @s General.Object.Tick matches 1 run playsound entity.zombie_villager.converted hostile @a[distance=..32] ~ ~ ~ 1 1.5 0

# 拡大
    execute if score @s General.Object.Tick matches 2 run function asset:object/2010.hexa_laser/tick/scale/expand

# ビーム発射
    execute if score @s General.Object.Tick matches 12..120 positioned ^ ^-2.2 ^ run function asset:object/2010.hexa_laser/tick/beam/
    execute if score @s General.Object.Tick matches 12..120 positioned ^-1.905 ^-1.1 ^ run function asset:object/2010.hexa_laser/tick/beam/
    execute if score @s General.Object.Tick matches 12..120 positioned ^1.905 ^-1.1 ^ run function asset:object/2010.hexa_laser/tick/beam/
    execute if score @s General.Object.Tick matches 12..120 positioned ^-1.905 ^1.1 ^ run function asset:object/2010.hexa_laser/tick/beam/
    execute if score @s General.Object.Tick matches 12..120 positioned ^1.905 ^1.1 ^ run function asset:object/2010.hexa_laser/tick/beam/
    execute if score @s General.Object.Tick matches 12..120 positioned ^ ^2.2 ^ run function asset:object/2010.hexa_laser/tick/beam/

# 縮小
    execute if score @s General.Object.Tick matches 120 run function asset:object/2010.hexa_laser/tick/scale/reduct

# 消滅処理
    kill @s[scores={General.Object.Tick=130..}]

#> asset:object/2010.hexa_laser/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2010/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 拡大
    execute if score @s General.Object.Tick matches 2 run function asset:object/2010.hexa_laser/tick/scale/expand

# ビーム用のディスプレイ召喚
    execute at @s if score @s General.Object.Tick matches 12 run function asset:object/2010.hexa_laser/tick/beam/summon
    execute if score @s General.Object.Tick matches 13 on passengers if entity @s[tag=2010.Display] run data merge entity @s {start_interpolation:0,transformation:{scale:[0.4f,0.4f,20f]}}

# ビーム発射
    execute if score @s General.Object.Tick matches 12..120 positioned ^ ^-2.2 ^ run function asset:object/2010.hexa_laser/tick/beam/
    execute if score @s General.Object.Tick matches 12..120 positioned ^-1.905 ^-1.1 ^ run function asset:object/2010.hexa_laser/tick/beam/
    execute if score @s General.Object.Tick matches 12..120 positioned ^1.905 ^-1.1 ^ run function asset:object/2010.hexa_laser/tick/beam/
    execute if score @s General.Object.Tick matches 12..120 positioned ^-1.905 ^1.1 ^ run function asset:object/2010.hexa_laser/tick/beam/
    execute if score @s General.Object.Tick matches 12..120 positioned ^1.905 ^1.1 ^ run function asset:object/2010.hexa_laser/tick/beam/
    execute if score @s General.Object.Tick matches 12..120 positioned ^ ^2.2 ^ run function asset:object/2010.hexa_laser/tick/beam/

# ビーム用のディスプレイ削除
    execute if score @s General.Object.Tick matches 115 on passengers if entity @s[tag=2010.Display] run data merge entity @s {start_interpolation:0,transformation:{scale:[0f,0f,20f]}}
    execute if score @s General.Object.Tick matches 120 on passengers if entity @s[tag=2010.Display] run kill @s

# 縮小
    execute if score @s General.Object.Tick matches 120 run function asset:object/2010.hexa_laser/tick/scale/reduct

# 消滅処理
    kill @s[scores={General.Object.Tick=130..}]

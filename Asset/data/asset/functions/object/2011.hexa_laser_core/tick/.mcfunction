#> asset:object/2011.hexa_laser_core/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2011/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# サウンド
    playsound item.spyglass.use hostile @a[distance=..64] ~ ~ ~ 2 1.4 1

# スパイラル処理
    scoreboard players operation $2011.Temp 2011.Dummy.UUID = @s 2011.Dummy.UUID
    execute if predicate api:global_vars/difficulty/max/normal as @e[tag=2010.Laser,distance=..64] if score @s 2011.Dummy.UUID = $2011.Temp 2011.Dummy.UUID at @s facing entity @e[tag=this,distance=..64] feet rotated ~-100 ~ positioned ^ ^ ^0.75 run function asset:object/2011.hexa_laser_core/tick/tp
    execute if predicate api:global_vars/difficulty/min/3_blessless as @e[tag=2010.Laser,distance=..64] if score @s 2011.Dummy.UUID = $2011.Temp 2011.Dummy.UUID at @s facing entity @e[tag=this,distance=..64] feet rotated ~-95 ~ positioned ^ ^ ^1.1 run function asset:object/2011.hexa_laser_core/tick/tp

# 消滅処理
    kill @s[scores={General.Object.Tick=130..}]

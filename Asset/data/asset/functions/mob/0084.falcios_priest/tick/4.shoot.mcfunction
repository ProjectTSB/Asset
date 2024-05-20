#> asset:mob/0084.falcios_priest/tick/4.shoot
#
# 魔法を発射する
#
# @within function asset:mob/0084.falcios_priest/tick/1

# 自身に鈍足を付与
    effect give @s slowness 1 2 true

# 予備動作
    execute if entity @s[scores={2C.Tick=1..3}] anchored eyes facing entity @p[gamemode=!spectator] eyes positioned ^ ^ ^0.2 run function asset:mob/0084.falcios_priest/tick/vfx/1
    execute if entity @s[scores={2C.Tick=4..6}] anchored eyes facing entity @p[gamemode=!spectator] eyes positioned ^ ^ ^0.3 run function asset:mob/0084.falcios_priest/tick/vfx/2
    execute if entity @s[scores={2C.Tick=7..9}] anchored eyes facing entity @p[gamemode=!spectator] eyes positioned ^ ^ ^0.4 run function asset:mob/0084.falcios_priest/tick/vfx/3
    execute if entity @s[scores={2C.Tick=1..9}] run playsound block.sculk_sensor.clicking hostile @a ~ ~ ~ 0.1 0.5 0

# 召喚
    execute if entity @s[scores={2C.Tick=10}] run data modify storage api: Argument.ID set value 85
    execute if entity @s[scores={2C.Tick=10}] anchored eyes facing entity @p[gamemode=!spectator] eyes positioned ^ ^ ^0.4 run function api:mob/summon

# リセット
    execute if entity @s[scores={2C.Tick=25..}] run function asset:mob/0084.falcios_priest/tick/5.reset

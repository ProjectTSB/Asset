#> asset:mob/0084.falcios_priest/tick/2.shoot
#
# 魔法を発射する
#
# @within function asset:mob/0084.falcios_priest/tick/1

# 自身に鈍足を付与
    effect give @s slowness 1 2 true

# ハード以上なら回復も実行
    execute if predicate api:global_vars/difficulty/min/hard if entity @s[scores={2C.Tick=0}] run function asset:mob/0084.falcios_priest/tick/3.heal

# 予備動作
    execute if entity @s[scores={2C.Tick=1..2}] anchored eyes facing entity @p[gamemode=!spectator] eyes positioned ^ ^ ^0.2 run function asset:mob/0084.falcios_priest/tick/vfx/1
    execute if entity @s[scores={2C.Tick=4..5}] anchored eyes facing entity @p[gamemode=!spectator] eyes positioned ^ ^ ^0.3 run function asset:mob/0084.falcios_priest/tick/vfx/2
    execute if entity @s[scores={2C.Tick=7..8}] anchored eyes facing entity @p[gamemode=!spectator] eyes positioned ^ ^ ^0.4 run function asset:mob/0084.falcios_priest/tick/vfx/3
    execute if entity @s[scores={2C.Tick=1..9}] run playsound block.sculk_sensor.clicking hostile @a ~ ~ ~ 0.25 0.5 0

# 召喚
    execute if entity @s[scores={2C.Tick=10}] run data modify storage api: Argument.ID set value 85
    execute if entity @s[scores={2C.Tick=10}] anchored eyes facing entity @p[gamemode=!spectator] eyes positioned ^ ^ ^0.4 run function api:mob/summon

# リセット
    execute if entity @s[scores={2C.Tick=25..}] run function asset:mob/0084.falcios_priest/tick/4.reset

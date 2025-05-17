#> asset:mob/0084.falcios_priest/tick/shoot
#
# 魔法を発射する
#
# @within function asset:mob/0084.falcios_priest/tick/

# 自身に鈍足を付与
    effect give @s slowness 1 2 true

# ハード以上なら回復も実行
    execute if predicate api:global_vars/difficulty/min/3_blessless if entity @s[scores={General.Mob.Tick=0}] run function asset:mob/0084.falcios_priest/tick/heal

# 予備動作
    execute if entity @s[scores={General.Mob.Tick=1..2}] anchored eyes facing entity @p[gamemode=!spectator] eyes positioned ^ ^ ^0.2 run function asset:mob/0084.falcios_priest/tick/vfx/1
    execute if entity @s[scores={General.Mob.Tick=4..5}] anchored eyes facing entity @p[gamemode=!spectator] eyes positioned ^ ^ ^0.3 run function asset:mob/0084.falcios_priest/tick/vfx/2
    execute if entity @s[scores={General.Mob.Tick=7..8}] anchored eyes facing entity @p[gamemode=!spectator] eyes positioned ^ ^ ^0.4 run function asset:mob/0084.falcios_priest/tick/vfx/3
    execute if entity @s[scores={General.Mob.Tick=1..9}] run playsound block.sculk_sensor.clicking hostile @a ~ ~ ~ 0.25 0.5 0

# 発射
    execute if entity @s[scores={General.Mob.Tick=10}] anchored eyes facing entity @p eyes positioned ^ ^ ^0.4 summon marker run function asset:mob/0084.falcios_priest/tick/shoot2

# リセット
    execute if entity @s[scores={General.Mob.Tick=25..}] run function asset:mob/0084.falcios_priest/tick/reset

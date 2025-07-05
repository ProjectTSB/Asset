#> asset:object/2008.disaster_divine/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2008/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# VFX表示
    function asset:object/2008.disaster_divine/tick/vfx/tick

# プレイヤーの方向を向く
    execute unless entity @s[tag=2008.ShotReady] facing entity @p[tag=!PlayerShouldInvulnerable,distance=..100] eyes run tp @s ~ ~ ~ ~ ~

# 80Tick以上もしくはtagがついている場合、発射待機
    execute if score @s General.Object.Tick matches 80.. run function asset:object/2008.disaster_divine/tick/ready
    execute if entity @s[tag=2008.ShotReadyManual] run function asset:object/2008.disaster_divine/tick/ready

# 消滅処理
    execute if predicate api:global_vars/difficulty/max/2_hard if entity @s[tag=2008.ShotReady,scores={General.Object.Tick=7..}] run function asset:object/2008.disaster_divine/tick/cast/
    execute if predicate api:global_vars/difficulty/min/3_blessless if entity @s[tag=2008.ShotReady,scores={General.Object.Tick=5..}] run function asset:object/2008.disaster_divine/tick/cast/

#> asset:object/2049.lightning_magic/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2049/tick

# 空中にいるときの処理
    execute if entity @s[tag=!2049.OnGround] run function asset:object/2049.lightning_magic/tick/in_air

# 地面にいるときの処理
    execute if entity @s[tag= 2049.OnGround] at @s rotated ~ 0 run function asset:object/2049.lightning_magic/tick/on_ground

# 継承
    execute at @s run function asset:object/super.tick

# リセット
    tag @s[tag=2049.Interval] remove 2049.Interval

# 消滅
# InAirLimitTick == 0 || AttackCount == 0
    execute if data storage asset:context this{InAirLimitTick:0} run function asset:object/call.m {method:"kill"}
    execute if data storage asset:context this{AttackCount:0} run function asset:object/call.m {method:"kill"}

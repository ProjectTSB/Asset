#> asset:object/2049.lightning_magic/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2049/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 空中にいるときの処理
    execute if entity @s[scores={General.Object.Tick=..79}] run function asset:object/2049.lightning_magic/tick/in_air

# 地面にいるときの処理
    execute if entity @s[scores={General.Object.Tick=100..}] at @s rotated ~ 0 run function asset:object/2049.lightning_magic/tick/on_ground

# 継承
    execute at @s run function asset:object/super.tick

# リセット
    tag @s[tag=2049.Interval] remove 2049.Interval

# 消滅
# 80..99 着陸前で4秒以上経過で消滅
# 100.. 汎用Tick > KillTickなら消滅
    execute if entity @s[scores={General.Object.Tick=80..99}] run kill @s
    execute if score @s General.Object.Tick >= @s 2049.KillTick run kill @s

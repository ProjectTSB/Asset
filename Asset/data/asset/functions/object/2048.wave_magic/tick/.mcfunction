#> asset:object/2048.wave_magic/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2048/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 空中にいるときの処理
    execute if entity @s[tag=!2048.OnGround] run function asset:object/2048.wave_magic/tick/in_air

# 地面にいるときの処理
    execute if entity @s[tag=2048.OnGround] run function asset:object/2048.wave_magic/tick/on_ground

# 継承
    execute at @s run function asset:object/super.tick

# 消滅
    execute if predicate api:global_vars/difficulty/max/normal if entity @s[scores={General.Object.Tick=118..}] run kill @s
    execute if predicate api:global_vars/difficulty/min/hard if entity @s[scores={General.Object.Tick=127..}] run kill @s

# 実装フラグを立てる
    data modify storage asset:object Implement set value true

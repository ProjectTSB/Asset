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

# リセット
    tag @s[tag=2048.Interval] remove 2048.Interval

# 消滅
# 80..99 着陸前で4秒以上経過で消滅
# 120.. ノーマル以下で着陸後1秒で消滅
# 130.. ハード以上で着陸後1.5秒で消滅
    execute if entity @s[scores={General.Object.Tick=80..99}] run kill @s
    execute if predicate api:global_vars/difficulty/max/normal if entity @s[scores={General.Object.Tick=120..}] run kill @s
    execute if predicate api:global_vars/difficulty/min/hard if entity @s[scores={General.Object.Tick=130..}] run kill @s

# 実装フラグを立てる
    data modify storage asset:object Implement set value true

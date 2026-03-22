#> asset:object/2274.gem_smoke/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2274/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 移動
    execute at @s run particle campfire_cosy_smoke ~ ~ ~ 0.3 0.3 0.3 0.01 1 force @a[distance=..80]
    execute at @s run tp @s ^ ^ ^0.8 ~ ~1.5
    execute at @s run particle campfire_cosy_smoke ~ ~ ~ 0.3 0.3 0.3 0.01 1 force @a[distance=..80]
    execute at @s run tp @s ^ ^ ^0.8 ~ ~1.5

# 消滅処理
    kill @s[scores={General.Object.Tick=160..}]

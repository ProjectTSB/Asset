#> asset:object/2083.brimstone/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2083/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 消滅処理
    kill @s[scores={General.Object.Tick=1000..}]

# 方向転換
    execute unless entity @p[tag=5X.BrimstoneTarget,distance=..15] facing entity @p[tag=5X.BrimstoneTarget] eyes run tp @s ~ ~ ~ ~ ~

# super
    execute at @s run function asset:object/super.tick

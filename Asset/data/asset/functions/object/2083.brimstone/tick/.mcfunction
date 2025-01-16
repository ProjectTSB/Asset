#> asset:object/2083.brimstone/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2083/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 方向転換
    function asset:object/2083.brimstone/turn with storage asset:context this

# super
    execute at @s run function asset:object/super.tick

# 消滅処理
    kill @s[scores={General.Object.Tick=1000..}]

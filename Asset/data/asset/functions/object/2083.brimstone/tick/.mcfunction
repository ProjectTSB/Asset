#> asset:object/2083.brimstone/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2083/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 方向転換
    function asset:object/2083.brimstone/turn with storage asset:context this

# ターゲット方向へパーティクル射出
    execute at @s run particle minecraft:wax_on ~ ~1 ~ ^ ^ ^10000000 0.00005 0 force @a

# 噴煙のパーティクル
    execute at @s[scores={General.Object.Tick=..10}] run particle flame ^ ^0.2 ^-1.2 0 0 0 0.02 2 force
    execute at @s[scores={General.Object.Tick=..10}] run particle flame ^ ^0.2 ^-1.3 0 0 0 0.02 2 force
    execute at @s[scores={General.Object.Tick=..10}] run particle cloud ^ ^0.2 ^-1.3 0 0 0 0.06 2 force
    execute at @s[scores={General.Object.Tick=..10}] run particle cloud ^ ^0.2 ^-1.4 0 0 0 0.06 2 force

# super
    execute at @s run function asset:object/super.tick

# 消滅処理
    kill @s[scores={General.Object.Tick=1000..}]

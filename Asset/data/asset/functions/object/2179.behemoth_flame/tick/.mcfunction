#> asset:object/2179.behemoth_flame/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2179/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 移動
    tp @s ^ ^ ^5
    execute positioned ^ ^ ^-4 run function asset:object/2179.behemoth_flame/tick/particle
    execute positioned ^ ^ ^-3 run function asset:object/2179.behemoth_flame/tick/particle
    execute positioned ^ ^ ^-2 run function asset:object/2179.behemoth_flame/tick/particle
    execute positioned ^ ^ ^-1 run function asset:object/2179.behemoth_flame/tick/particle
    execute positioned ^ ^ ^0 run function asset:object/2179.behemoth_flame/tick/particle

# 表示
    execute if entity @s[scores={General.Object.Tick=3}] run function asset:object/2179.behemoth_flame/tick/show
    execute if entity @s[scores={General.Object.Tick=10}] run function asset:object/2179.behemoth_flame/tick/clear

# 消滅処理
    kill @s[scores={General.Object.Tick=13..}]

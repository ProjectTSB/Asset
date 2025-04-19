#> asset:object/2189.eclael_arrow/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2189/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 演出
    execute if entity @s[scores={General.Object.Tick=..2}] run function asset:object/2189.eclael_arrow/tick/particle_ring_0
    execute if entity @s[scores={General.Object.Tick=3..4}] run function asset:object/2189.eclael_arrow/tick/particle_ring_1
    execute if entity @s[scores={General.Object.Tick=5..}] run function asset:object/2189.eclael_arrow/tick/particle_ring_2

# 移動・攻撃処理
    execute positioned ^ ^ ^ run function asset:object/2189.eclael_arrow/tick/move
    execute positioned ^ ^ ^1 run function asset:object/2189.eclael_arrow/tick/move
    execute positioned ^ ^ ^2 run function asset:object/2189.eclael_arrow/tick/move
    execute positioned ^ ^ ^3 run function asset:object/2189.eclael_arrow/tick/move
    execute positioned ^ ^ ^4 run function asset:object/2189.eclael_arrow/tick/move
    tp @s ^ ^ ^5
    execute if entity @a[tag=2189.Hit] run function asset:object/2189.eclael_arrow/tick/attack

# 消滅処理
    kill @s[scores={General.Object.Tick=8..}]

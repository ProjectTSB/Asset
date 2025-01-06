#> asset:object/2190.eclael_slashbeam/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2190/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 演出
    execute rotated ~90 ~-40 run function asset:object/2190.eclael_slashbeam/tick/particle

# 移動・攻撃処理
    execute positioned ^ ^ ^1 run function asset:object/2190.eclael_slashbeam/tick/hit
    tp @s ^ ^ ^2
    execute if entity @a[tag=2190.Hit] as @a[tag=2190.Hit] at @s run function asset:object/2190.eclael_slashbeam/tick/attack

# 消滅処理
    kill @s[scores={General.Object.Tick=30..}]

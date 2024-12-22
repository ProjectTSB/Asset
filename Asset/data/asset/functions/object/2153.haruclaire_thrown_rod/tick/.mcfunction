#> asset:object/2153.haruclaire_thrown_rod/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2153/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1
    execute if score @s 2153.CoolTime matches 1.. run scoreboard players remove @s 2153.CoolTime 1

# きらきら
    particle firework ~ ~ ~ 0.1 0.1 0.1 0.1 1

# 回転
    function asset:object/2153.haruclaire_thrown_rod/tick/spin

# 移動しつつ攻撃
    function asset:object/2153.haruclaire_thrown_rod/tick/move
    execute at @s run function asset:object/2153.haruclaire_thrown_rod/tick/move

# 消滅処理
    execute if entity @s[scores={General.Object.Tick=60..}] run function asset:object/2153.haruclaire_thrown_rod/tick/kill

#> asset:object/2153.haruclaire_thrown_rod/tick/move
#
# Objectのtick時の処理
#
# @within asset:object/2153.haruclaire_thrown_rod/tick/

# 移動
    tp @s ^ ^ ^0.8

# 序盤は上昇
    execute if entity @s[tag=!2153.Inverse,scores={General.Object.Tick=..8}] at @s run tp @s ^-0.2 ^0.2 ^
    execute if entity @s[tag=2153.Inverse,scores={General.Object.Tick=..8}] at @s run tp @s ^0.2 ^0.2 ^

# 終盤は落下
    execute if entity @s[tag=!2153.Inverse,scores={General.Object.Tick=16..}] at @s run tp @s ^0.2 ^-0.2 ^
    execute if entity @s[tag=2153.Inverse,scores={General.Object.Tick=16..}] at @s run tp @s ^-0.2 ^-0.2 ^

# ブロックに衝突する場合、壊れる
    execute at @s unless block ^ ^ ^0.8 #lib:no_collision run function asset:object/2153.haruclaire_thrown_rod/tick/kill

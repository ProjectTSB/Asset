#> asset:object/2189.eclael_arrow/tick/move
#
# Mobのtick時の処理
#
# @within function asset:object/2189.eclael_arrow/tick/

# 演出
    execute if score @s General.Object.Tick matches ..2 positioned ^ ^ ^ run particle dust 100000000 100000000 1 2 ~ ~ ~ 0.1 0.1 0.1 0 3
    execute if score @s General.Object.Tick matches ..2 positioned ^ ^ ^0.5 run particle dust 100000000 100000000 1 2 ~ ~ ~ 0.1 0.1 0.1 0 3
    execute if score @s General.Object.Tick matches 3..4 positioned ^ ^ ^ run particle dust 100000000 1 1 2 ~ ~ ~ 0.1 0.1 0.1 0 3
    execute if score @s General.Object.Tick matches 3..4 positioned ^ ^ ^0.5 run particle dust 100000000 1 1 2 ~ ~ ~ 0.1 0.1 0.1 0 3
    execute if score @s General.Object.Tick matches 5.. positioned ^ ^ ^ run particle dust 100000000 1 100000000 2 ~ ~ ~ 0.1 0.1 0.1 0 3
    execute if score @s General.Object.Tick matches 5.. positioned ^ ^ ^0.5 run particle dust 100000000 1 100000000 2 ~ ~ ~ 0.1 0.1 0.1 0 3

# プレイヤーが近くにいる場合，ダメージ発生
    execute positioned ~ ~-1 ~ run tag @a[tag=!PlayerShouldInvulnerable,distance=..1.2] add 2189.Hit
    execute positioned ~ ~ ~ run tag @a[tag=!PlayerShouldInvulnerable,distance=..1.2] add 2189.Hit

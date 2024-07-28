#> asset:mob/0188.fireball/tick/move
#
#
#
# @within function
#   asset:mob/0188.fireball/tick/
#   asset:mob/0188.fireball/tick/move

# パーティクル
    particle flame ~ ~ ~ 0.1 0.1 0.1 0.005 1
    particle dust 1 0.5 0 1 ~ ~ ~ 0 0 0 0 1 force @a[distance=..30]

# 前進
    tp @s ^ ^ ^0.25 ~ ~

# プレイヤーの衝突判定
    execute positioned ~-0.5 ~0.0 ~-0.5 if entity @p[dx=0] run function asset:mob/0188.fireball/tick/hit

# 壁の衝突判定
    execute unless block ~ ~ ~ #lib:no_collision run function asset:mob/0188.fireball/tick/hit

# 再帰
    scoreboard players add $Recursive Temporary 1
    execute if entity @s[tag=!58.Hit] if score $Recursive Temporary matches ..3 at @s run function asset:mob/0188.fireball/tick/move

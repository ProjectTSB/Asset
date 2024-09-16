#> asset:mob/0266.small_dark_ball/tick/move
#
# 再帰処理で移動する
#
# @within function
#   asset:mob/0266.small_dark_ball/tick/
#   asset:mob/0266.small_dark_ball/tick/move

# 前進
    execute if entity @s[tag=!7E.SlowBullet] run tp @s ^ ^ ^0.1 ~ ~
    execute if entity @s[tag=7E.SlowBullet] run tp @s ^ ^ ^0.05 ~ ~

# プレイヤーの衝突判定
    execute at @s positioned ~-0.5 ~0.0 ~-0.5 if entity @p[dx=0] run function asset:mob/0266.small_dark_ball/tick/hit

# 壁の衝突判定
    execute unless block ~ ~ ~ #lib:no_collision run function asset:mob/0266.small_dark_ball/tick/hit

# 再帰
    scoreboard players add $Recursive Temporary 1
    execute if entity @s[tag=!7E.Hit] if score $Recursive Temporary matches ..5 at @s run function asset:mob/0266.small_dark_ball/tick/move

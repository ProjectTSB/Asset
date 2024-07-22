#> asset:mob/0374.lightning_magic/tick/2.in_air
#
# 空中にいるときの処理
#
# @within function asset:mob/0374.lightning_magic/tick/1

# 演出
    particle dust 1 1 0 1.3 ~ ~ ~ 0.05 0.05 0.05 0 1 normal @a
    particle electric_spark ~ ~ ~ 0.05 0.05 0.05 0 2 normal @a

# 少しずつ下に下がる
    tp @s ~ ~-0.3 ~

# 地面に着いたらプレイヤーの方を向く & Tickの値を変更
    execute at @s unless block ~ ~-0.3 ~ #lib:no_collision run tp @s ~ ~ ~ facing entity @p feet
    execute at @s unless block ~ ~-0.3 ~ #lib:no_collision run scoreboard players set @s AE.Tick 100

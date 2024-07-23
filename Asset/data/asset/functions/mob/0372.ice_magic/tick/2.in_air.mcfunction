#> asset:mob/0372.ice_magic/tick/2.in_air
#
# 空中にいるときの処理
#
# @within function asset:mob/0372.ice_magic/tick/1

# 演出
    particle dust 0.3 0.6 100000000 1.5 ~ ~ ~ 0.1 0.1 0.1 0 2 normal @a
    playsound entity.dolphin.jump hostile @a ~ ~ ~ 0.2 1.1 0

# 地面に着弾するまで直進
    tp @s ^ ^ ^0.5

# 地面に着弾したらプレイヤーの方向を見て、Tickの値を変更
    execute unless block ^ ^ ^0.5 #lib:no_collision facing entity @p feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
    execute unless block ^ ^ ^0.5 #lib:no_collision run scoreboard players set @s AC.Tick 100

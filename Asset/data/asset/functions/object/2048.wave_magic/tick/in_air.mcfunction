#> asset:object/2048.wave_magic/tick/in_air
#
#
#
# @within function asset:object/2048.wave_magic/tick/

# 演出
    particle dust 0.3 0.6 100000000 1.5 ~ ~ ~ 0.1 0.1 0.1 0 2 normal @a
    playsound entity.dolphin.jump hostile @a ~ ~ ~ 0.2 1.1 0

# 地面に着弾するまで直進

# 地面に着弾したらプレイヤーの方向を見て、着陸Tagを付与
    execute unless block ^ ^ ^0.5 #lib:no_collision facing entity @p feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
    execute unless block ^ ^ ^0.5 #lib:no_collision run tag @s add 2048.OnGround

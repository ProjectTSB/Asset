#> asset:mob/0214.drone/tick/attack_motion
#
# 
#
# @within function asset:mob/0214.drone/tick/

# 中心座標を向く(arctan(0.05) = 2.86度/tickぐらいの速度で旋回)
    execute at @s positioned ^ ^ ^1000 facing entity @e[type=marker,tag=5X.Centre,distance=..2048,limit=1] feet positioned ^ ^ ^1000 facing entity @s feet positioned as @s positioned ^ ^ ^0.05 rotated as @s positioned ^ ^ ^-1 facing entity @s feet positioned as @s run tp @s ^ ^ ^ ~ ~

# 中心座標の高さにくるまで下降、到達したら水平飛行
    execute at @e[type=marker,tag=5X.Centre,distance=..128,limit=1] positioned ~-100 ~1 ~-100 if entity @s[dx=199,dy=100,dz=199] at @s run tp @s ~ ~ ~ ~ 60
    execute at @e[type=marker,tag=5X.Centre,distance=..128,limit=1] positioned ~-100 ~1 ~-100 unless entity @s[dx=199,dy=100,dz=199] at @s run tp @s ~ ~ ~ ~ 0

# 直進
    execute at @s run tp @s ^ ^ ^0.3

# モデルの向きを合わせる
    execute rotated as @s on passengers positioned as @s run tp @s ~ ~ ~ ~ ~

    
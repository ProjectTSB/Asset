#> asset:mob/0214.drone/tick/attack_motion
#
# 
#
# @within function asset:mob/0214.drone/tick/

# 中心座標を向く
    execute facing entity @e[tag=5X.Centre,distance=..128,limit=1] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~

# 直進
    execute at @s run tp @s ^ ^ ^0.25

# 中心座標の高さにくるまで下降
    execute at @e[tag=5X.Centre,distance=..128,limit=1] positioned ~-100 ~1 ~-100 if entity @s[dx=199,dy=100,dz=199] at @s run tp @s ~ ~-0.5 ~

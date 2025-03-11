#> asset:mob/0175.queen_bee/tick/common/tp
#
#
#
# @within function asset:mob/0175.queen_bee/tick/**

# タグをつける
    execute at @s run tag @e[type=armor_stand,tag=4V.ArmorStand,distance=..0.01,sort=nearest,limit=1] add 4V.ArmorStandThis
# 前進
    tp @s ^ ^ ^
# 位置をあわせる
    tp @e[type=armor_stand,tag=4V.ArmorStandThis,distance=..100] @s
# タグを消す
    tag @e[type=armor_stand,tag=4V.ArmorStandThis,distance=..100] remove 4V.ArmorStandThis

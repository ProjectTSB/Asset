#> asset:mob/0410.heiloang/tick/event/sweep/get_attack_position.m
#
# なぎはらい火炎放射
#
# @within asset:mob/0410.heiloang/tick/event/sweep/
# @within asset:mob/0410.heiloang/tick/event/heil_disaster/
# @within asset:mob/0410.heiloang/tick/event/heil_disaster/hard

# 攻撃
    $execute positioned ^$(posx) ^$(posy) ^$(posz) as @e[type=slime,tag=BE.EntityRoot,sort=nearest,limit=1] rotated as @s run function asset:mob/0410.heiloang/tick/event/sweep/attack

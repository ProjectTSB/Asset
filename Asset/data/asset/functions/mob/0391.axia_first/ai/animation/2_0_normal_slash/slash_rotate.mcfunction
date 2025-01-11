#> asset:mob/0391.axia_first/ai/animation/2_0_normal_slash/slash_rotate
#
# 斬撃エフェクトを回転させる
#
# @within function asset:mob/0391.axia_first/ai/animation/2_0_normal_slash/

# 幾何学を使用して回転させる
    execute as @e[type=item_display,tag=2001.CustomEffect,distance=..5,sort=nearest,limit=1] at @s facing entity @e[type=wither_skeleton,tag=this,distance=..64,sort=nearest,limit=1] feet rotated ~225 0 positioned as @e[type=wither_skeleton,tag=this,distance=..64,sort=nearest,limit=1] positioned ^ ^1 ^1.118 run tp @s ^ ^ ^ ~ ~

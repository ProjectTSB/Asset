#> asset:mob/0392.ecual_first/ai/animation/7_0_holy_ray/beam/rotate
#
# ビーム用 方向回転
#
# @within function asset:mob/0392.ecual_first/ai/animation/7_0_holy_ray/

# 実行者は向く対象

# タグ付与
    tag @s add AW.Temp.Target
# 滑らかに回転
    execute as @e[type=wither_skeleton,tag=this,distance=..64,sort=nearest,limit=1] at @s rotated ~ 0 positioned ^ ^ ^-4 facing entity @a[tag=AW.Temp.Target,distance=..66,limit=1] feet rotated ~ 0 positioned ^ ^ ^-1 facing entity @s feet positioned as @s run tp @s ^ ^ ^ ~ 0
    execute as @e[type=wither_skeleton,tag=this,distance=..64,sort=nearest,limit=1] at @s rotated ~ 0 positioned ^ ^ ^1 facing entity @a[tag=AW.Temp.Target,distance=..66,limit=1] feet rotated ~ 0 positioned ^ ^ ^1 if entity @e[type=wither_skeleton,tag=this,distance=..0.1,sort=nearest,limit=1] at @s run tp @s ^ ^ ^ ~1 ~
# 終了
    tag @s remove AW.Temp.Target

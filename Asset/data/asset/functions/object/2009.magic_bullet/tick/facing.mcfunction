#> asset:object/2009.magic_bullet/tick/facing
#
# プレイヤーの方を向く
#
# @within function asset:object/2009.magic_bullet/tick/

# タグ付与
    tag @s add 2009.Target
# 滑らかに回転
    execute as @e[tag=this,distance=..64,sort=nearest,limit=1] at @s rotated ~ 0 positioned ^ ^ ^-2 facing entity @e[tag=2009.Target,distance=..66,limit=1] feet rotated ~ 0 positioned ^ ^ ^-1 facing entity @s feet positioned as @s run tp @s ^ ^ ^ ~ 0
    execute as @e[tag=this,distance=..64,sort=nearest,limit=1] at @s rotated ~ 0 positioned ^ ^ ^1 facing entity @e[tag=2009.Target,distance=..66,limit=1] feet rotated ~ 0 positioned ^ ^ ^1 if entity @e[type=wither_skeleton,tag=AZ.Temp.This,distance=..0.1,sort=nearest,limit=1] at @s run tp @s ^ ^ ^ ~1 ~
# 終了
    tag @s remove 2009.Target

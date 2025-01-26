#> asset:mob/0393.labyria_first/ai/general/2.rotate
#
# 汎用・方向回転コマンド
#
# @within function asset:mob/0393.labyria_first/**

# 実行者は向く対象

# タグ付与
    tag @s add AX.Temp.Target
# 滑らかに回転
    execute as @e[type=wither_skeleton,tag=this,distance=..64,sort=nearest,limit=1] at @s rotated ~ 0 positioned ^ ^ ^-2 facing entity @a[tag=AX.Temp.Target,distance=..66,limit=1] feet rotated ~ 0 positioned ^ ^ ^-1 facing entity @s feet positioned as @s run tp @s ^ ^ ^ ~ 0
    execute as @e[type=wither_skeleton,tag=this,distance=..64,sort=nearest,limit=1] at @s rotated ~ 0 positioned ^ ^ ^1 facing entity @a[tag=AX.Temp.Target,distance=..66,limit=1] feet rotated ~ 0 positioned ^ ^ ^1 if entity @e[type=wither_skeleton,tag=this,distance=..0.1,sort=nearest,limit=1] at @s run tp @s ^ ^ ^ ~1 ~
# 終了
    tag @s remove AX.Temp.Target

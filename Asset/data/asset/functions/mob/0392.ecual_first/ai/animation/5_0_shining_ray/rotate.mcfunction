#> asset:mob/0392.ecual_first/ai/animation/5_0_shining_ray/rotate
#
# プレイヤーの向きにピッタリ回転
#
# @within function
#   asset:mob/0392.ecual_first/ai/animation/5_0_shining_ray/
#   asset:mob/0392.ecual_first/ai/animation/5_1_water_bullet/

# タグ付与
    tag @s add AW.Temp.Target
# プレイヤーの方向を確実に向く
    execute as @e[type=wither_skeleton,tag=this,distance=..64,sort=nearest,limit=1] at @s facing entity @e[type=player,tag=AW.Temp.Target,distance=..66,limit=1] feet run tp @s ^ ^ ^ ~ 0
# 終了
    tag @s remove AW.Temp.Target

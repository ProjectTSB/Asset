#> asset:mob/0391.axia_first/ai/animation/7_0_zangekihou/rotate
#
# ハード用回転
#
# @within function
#   asset:mob/0391.axia_first/ai/animation/7_0_zangekihou/
#   asset:mob/0391.axia_first/ai/animation/100_0_opening/

# タグ付与
    tag @s add AV.Temp.Target
# プレイヤーの方向を確実に向く
    execute as @e[type=wither_skeleton,tag=this,distance=..64,sort=nearest,limit=1] at @s facing entity @e[tag=AV.Temp.Target,distance=..66,limit=1] feet run tp @s ^ ^ ^ ~ 0
# 終了
    tag @s remove AV.Temp.Target

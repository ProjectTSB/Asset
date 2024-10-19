#> asset:mob/1004.tultaria/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/alias/1004/death

# オブジェクト類のキル
    kill @e[type=item_display,scores={ObjectID=2030}]
    kill @e[type=item_display,tag=RW.SkyBox,sort=nearest,limit=1]

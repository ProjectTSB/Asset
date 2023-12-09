#> asset:mob/0343.louvert_meteor/tick/3.cast
#
# 爆発処理
#
# @within function asset:mob/0343.louvert_meteor/summon/init

# 演出
    function asset:mob/0343.louvert_meteor/tick/3.1.cast_vfx

# キル
    kill @s
    kill @e[type=item_display,tag=9J.Display,distance=..0.001,limit=1]

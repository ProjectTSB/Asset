#> asset:mob/1004.tultaria/tick/reset/remove_objects
#
# 残るとマズいオブジェクト類が消える
#
# @within function asset:mob/1004.tultaria/**

# オブジェクト類のキル
    kill @e[type=item_display,distance=..128,scores={ObjectID=2030}]
    kill @e[type=item_display,distance=..128,scores={ObjectID=2043}]
    kill @e[type=item_display,distance=..128,scores={ObjectID=2053}]

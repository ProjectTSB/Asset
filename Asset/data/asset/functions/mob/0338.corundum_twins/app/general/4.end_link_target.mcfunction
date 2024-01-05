#> asset:mob/0338.corundum_twins/app/general/4.end_link_target
# @input args
#   Uid: int: rootのユニークid
#
# Rootと双子本体の紐づけ終了処理
#
# @within function asset:mob/0338.corundum_twins/**

# 紐づけ終了
    tag @s remove 9E.TargetEnabled
    tag @e[type=wither_skeleton,tag=9F.Root,tag=9F.Target] remove 9F.Target
    tag @e[type=wither_skeleton,tag=9G.Root,tag=9F.Target] remove 9F.Target

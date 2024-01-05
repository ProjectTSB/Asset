#> asset:mob/0338.corundum_twins/app/general/3.get_link_target_macro.m
# @input args
#   Uid: int: rootのユニークid
#
# Rootと双子本体の紐づけ処理
#
# @within function asset:mob/0338.corundum_twins/**

# 紐づけ対象を取得
    tag @s add 9E.TargetEnabled
    $tag @e[type=wither_skeleton,tag=9F.Root,tag=9E.Link.$(Uid)] add 9F.Target
    $tag @e[type=wither_skeleton,tag=9G.Root,tag=9E.Link.$(Uid)] add 9G.Target

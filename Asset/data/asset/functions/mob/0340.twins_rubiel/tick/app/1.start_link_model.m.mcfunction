#> asset:mob/0340.twins_rubiel/tick/app/1.start_link_model.m
#
# Animated Javaモデルの紐づけ開始
#
# @within function asset:mob/0340.twins_rubiel/**

# 紐づけ
    $tag @e[type=item_display,tag=9G.ModelRoot,tag=9E.Link.$(Uid)] add 9G.ModelRoot.Target

#> asset:mob/0338.corundum_twins/app/general/1.start_link.m
# @input args
#   Uid: int: rootのユニークid
#
# Rootと双子本体の紐づけ処理
#
# @within function asset:mob/0338.corundum_twins/**

# マクロを使ってscoreboardを文字列化し、タグとして双子に付与
    $tag @e[type=wither_skeleton,tag=9F.Root,tag=9F.Init] add 9E.Link.$(Uid)
    $tag @e[type=wither_skeleton,tag=9G.Root,tag=9G.Init] add 9E.Link.$(Uid)
    $tag @e[type=item_display,tag=9F.ModelRoot,tag=9F.Init] add 9E.Link.$(Uid)
    $tag @e[type=item_display,tag=9G.ModelRoot,tag=9G.Init] add 9E.Link.$(Uid)

# 双子側からRootに辿れるよう、スコアを付与
    scoreboard players operation @e[type=wither_skeleton,tag=9F.Root,tag=9F.Init] 9E.Uid = @s 9E.Uid
    scoreboard players operation @e[type=wither_skeleton,tag=9G.Root,tag=9G.Init] 9E.Uid = @s 9E.Uid
    scoreboard players operation @e[type=item_display,tag=9F.ModelRoot,tag=9F.Init] 9E.Uid = @s 9E.Uid
    scoreboard players operation @e[type=item_display,tag=9G.ModelRoot,tag=9G.Init] 9E.Uid = @s 9E.Uid

# 終了
    tag @e[type=wither_skeleton,tag=9F.Root,tag=9F.Init] remove 9F.Init
    tag @e[type=wither_skeleton,tag=9G.Root,tag=9G.Init] remove 9G.Init
    tag @e[type=item_display,tag=9F.ModelRoot,tag=9F.Init] remove 9F.Init
    tag @e[type=item_display,tag=9G.ModelRoot,tag=9G.Init] remove 9G.Init

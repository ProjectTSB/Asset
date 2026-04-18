#> asset:mob/0339.twins_sapphiel/app/general/6.teleport_to_land
#
# 汎用処理 着地する
#
# @within
#     function asset:mob/0339.twins_sapphiel/tick/**
#     function asset:mob/0339.twins_sapphiel/app/general/6.teleport_to_land

# 壁に埋まるまで下に移動する
    execute if block ~ ~-0.5 ~ #lib:no_collision/ run tp @s ~ ~-0.4 ~
    execute if block ~ ~-0.5 ~ #lib:no_collision/ positioned ~ ~-0.5 ~ run function asset:mob/0339.twins_sapphiel/app/general/6.teleport_to_land

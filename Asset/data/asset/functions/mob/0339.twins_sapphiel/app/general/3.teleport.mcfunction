#> asset:mob/0339.twins_sapphiel/app/general/3.teleport
#
# 汎用処理 壁に埋まらないよう移動する
#
# @within asset:mob/0339.twins_sapphiel/tick/**

# 壁の中ではない場合のみ移動
    execute if block ~ ~ ~ #lib:no_collision run tp @s ~ ~ ~ ~ ~

#> asset:mob/0365.frestchika_v2/ai/general/1.teleport
#
# 汎用・テレポートコマンド
#
# @within function asset:mob/0365.frestchika_v2/**

# 壁の中にはテレポートしない
    execute if block ~ ~ ~ #lib:no_collision run tp @s ~ ~ ~ ~ ~

# ToDo 埋まり回避ループを作るかどうか
#> asset:mob/0341.louvert/tick/general/teleport
#
# 汎用・テレポートコマンド
#
# @within function asset:mob/0341.louvert/**

# 壁の中にはテレポートしない
    execute if block ~ ~ ~ #lib:no_collision run tp @s ~ ~ ~ ~ ~

# ToDo 埋まり回避ループを作るかどうか
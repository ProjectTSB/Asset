#> asset:mob/0392.ecual_first/ai/general/1.teleport
#
# 汎用・テレポートコマンド
#
# @within function asset:mob/0392.ecual_first/**

# 壁の中にはテレポートしない
    execute if block ~ ~ ~ #lib:no_collision/ run tp @s ~ ~ ~ ~ ~

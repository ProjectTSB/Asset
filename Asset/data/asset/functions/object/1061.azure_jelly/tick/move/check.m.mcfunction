#> asset:object/1061.azure_jelly/tick/move/check.m
#
#
#
# @within function asset:object/1061.azure_jelly/tick/move/

# 前方が問題なかったら移動する
    #$execute positioned ^ ^ ^1 if block ~ ~ ~ #lib:no_collision if block ~ ~1 ~ #lib:no_collision at @s run tp @s ^ ^ ^$(Step)
    $tp @s ^ ^ ^$(Step)

#> asset:artifact/1048.thunder_storm/trigger/recursive
#
# 再帰でObjectの召喚位置を決める
#
# @within function
#   asset:artifact/1048.thunder_storm/trigger/3.main
#   asset:artifact/1048.thunder_storm/trigger/recursive

# 移動
    tp @s ~ ~ ~

# 再帰
    scoreboard players remove $T4.Temp Temporary 1
    execute at @s positioned ^ ^ ^0.25 if block ^ ^ ^ #lib:no_collision/ if score $T4.Temp Temporary matches 1.. run function asset:artifact/1048.thunder_storm/trigger/recursive

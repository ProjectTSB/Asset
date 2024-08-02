#> asset:artifact/1065.magic_bullet/trigger/bullet/move
#
# 再帰処理で前進する
#
# @within function
#   asset:artifact/1065.magic_bullet/trigger/bullet/main
#   asset:artifact/1065.magic_bullet/trigger/bullet/move

# tpする
    tp @s ^ ^ ^0.25

# 演出
    execute at @s run particle dust 0.2 0.2 1 1 ~ ~ ~ 0 0 0 0 1

# 再帰移動
    scoreboard players add $Recursive Temporary 1
    execute if score $Recursive Temporary matches ..9 at @s if block ^ ^ ^0.25 #lib:no_collision run function asset:artifact/1065.magic_bullet/trigger/bullet/move

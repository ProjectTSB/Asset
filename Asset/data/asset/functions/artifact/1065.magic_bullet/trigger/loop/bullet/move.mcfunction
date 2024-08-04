#> asset:artifact/1065.magic_bullet/trigger/loop/bullet/move
#
# 再帰処理で前進する
#
# @within function
#   asset:artifact/1065.magic_bullet/trigger/loop/bullet/main
#   asset:artifact/1065.magic_bullet/trigger/loop/bullet/move

# tpする
    tp @s ^ ^ ^0.25

# 演出
    execute at @s run particle dust 0.2 0.2 1 1.3 ~ ~ ~ 0 0 0 0 1
    execute at @s run particle dust 0.2 0.2 1 1.3 ^ ^ ^0.125 0 0 0 0 1

# 消滅
    execute at @s unless block ^ ^ ^0.25 #lib:no_collision run kill @s

# 再帰移動
    scoreboard players add $Recursive Temporary 1
    execute if score $Recursive Temporary matches ..9 at @s if block ^ ^ ^0.25 #lib:no_collision run function asset:artifact/1065.magic_bullet/trigger/loop/bullet/move

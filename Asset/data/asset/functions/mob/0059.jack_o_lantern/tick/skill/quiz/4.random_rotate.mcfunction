#> asset:mob/0059.jack_o_lantern/tick/skill/quiz/4.random_rotate
#
#
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill/quiz/1.main

# ランダムな方向を向く

# 疑似乱数取得
    execute store result score $Random Temporary run function lib:random/
# ほしい範囲に剰余算する
    scoreboard players operation $Random Temporary %= $6 Const

# スキル選択
    #execute if score $Random Temporary matches 0 run tp @s ~ ~ ~ ~ ~
    execute if score $Random Temporary matches 1 run tp @s ~ ~ ~ ~30 ~
    execute if score $Random Temporary matches 2 run tp @s ~ ~ ~ ~60 ~
    execute if score $Random Temporary matches 3 run tp @s ~ ~ ~ ~90 ~
    execute if score $Random Temporary matches 4 run tp @s ~ ~ ~ ~120 ~
    execute if score $Random Temporary matches 5 run tp @s ~ ~ ~ ~150 ~
    execute if score $Random Temporary matches 6 run tp @s ~ ~ ~ ~180 ~
    execute if score $Random Temporary matches 7 run tp @s ~ ~ ~ ~210 ~
    execute if score $Random Temporary matches 8 run tp @s ~ ~ ~ ~240 ~
    execute if score $Random Temporary matches 9 run tp @s ~ ~ ~ ~270 ~
    execute if score $Random Temporary matches 10 run tp @s ~ ~ ~ ~300 ~
    execute if score $Random Temporary matches 11 run tp @s ~ ~ ~ ~330 ~

# リセット
    scoreboard players reset $Random Temporary

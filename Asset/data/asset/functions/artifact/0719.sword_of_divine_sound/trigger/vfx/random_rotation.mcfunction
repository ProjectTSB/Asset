#> asset:artifact/0719.sword_of_divine_sound/trigger/vfx/random_rotation
#
# 雷の曲がる部分の処理
#
# @within function asset:artifact/0719.sword_of_divine_sound/trigger/vfx/lightning

# 疑似乱数取得
    execute store result score $Random Temporary run function lib:random/
# ほしい範囲に剰余算
    scoreboard players operation $Random Temporary %= $10 Const

# 値に応じて角度を変えて再帰 x_rotationが入っている部分は雷の向きが水平になりすぎるのを防ぐため
    execute if score $Random Temporary matches 0 if entity @s run tp @s ~ ~ ~ ~ ~10
    execute if score $Random Temporary matches 1 if entity @s run tp @s ~ ~ ~ ~ ~20
    execute if score $Random Temporary matches 2 if entity @s run tp @s ~ ~ ~ ~ ~30
    execute if score $Random Temporary matches 3 if entity @s run tp @s ~ ~ ~ ~ ~40
    execute if score $Random Temporary matches 4 if entity @s run tp @s ~ ~ ~ ~ ~-10
    execute if score $Random Temporary matches 5 if entity @s run tp @s ~ ~ ~ ~ ~-20
    execute if score $Random Temporary matches 6 if entity @s run tp @s ~ ~ ~ ~ ~-30
    execute if score $Random Temporary matches 7 if entity @s run tp @s ~ ~ ~ ~ ~-40

# 再帰
    execute at @s run function asset:artifact/0719.sword_of_divine_sound/trigger/vfx/lightning

# リセット
    scoreboard players reset $Random Temporary

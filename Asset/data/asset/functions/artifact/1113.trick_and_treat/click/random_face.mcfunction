#> asset:artifact/1113.trick_and_treat/click/random_face
#
# ランダムな顔を設定する
#
# @within function asset:artifact/1113.trick_and_treat/click/summon_pumpkin

# 疑似乱数取得
    execute store result score $Random Temporary run function lib:random/
    scoreboard players operation $Random Temporary %= $9 Const

# ID選択
    execute if score $Random Temporary matches 0 run scoreboard players set $Temp Temporary 20201
    execute if score $Random Temporary matches 1 run scoreboard players set $Temp Temporary 20202
    execute if score $Random Temporary matches 2 run scoreboard players set $Temp Temporary 20203
    execute if score $Random Temporary matches 3 run scoreboard players set $Temp Temporary 20204
    execute if score $Random Temporary matches 4 run scoreboard players set $Temp Temporary 20205
    execute if score $Random Temporary matches 5 run scoreboard players set $Temp Temporary 20206
    execute if score $Random Temporary matches 6 run scoreboard players set $Temp Temporary 20282
    execute if score $Random Temporary matches 7 run scoreboard players set $Temp Temporary 20283
    execute if score $Random Temporary matches 8 run scoreboard players set $Temp Temporary 20284

# IDを返す
    return run scoreboard players get $Temp Temporary

#> asset:mob/1004.tultaria/tick/skill/spread_shot/select_direction
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/spread_shot/tick

# 疑似乱数取得
    execute store result score $Random Temporary run function lib:random/

# フェイズ1
    scoreboard players operation $Random Temporary %= $2 Const

# 向きを指定
    execute if score $Random Temporary matches 0 run tag @s add RW.Direction.Left
    execute if score $Random Temporary matches 1 run tag @s add RW.Direction.Right

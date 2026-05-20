#> asset:mob/0421.silver_turret/tick/reset
#
#
#
# @within function asset:mob/0421.silver_turret/tick/

#> Private
# @private
    #declare score_holder $N
    #declare score_holder $Difficulty

# N ÷ (難易度値 + 2)を次までの発射間隔とする

# N設定
    scoreboard players set $N Temporary 600

# 難易度値 + 2
    execute store result score $Difficulty Temporary run data get storage api: Return.Difficulty
    scoreboard players add $Difficulty Temporary 2

# 求める
    scoreboard players operation $N Temporary /= $Difficulty Temporary

# 汎用スコアへ-1倍して代入
    execute store result score @s General.Mob.Tick run scoreboard players operation $N Temporary *= $-1 Const

# リセット
    scoreboard players reset $N Temporary
    scoreboard players reset $Difficulty Temporary

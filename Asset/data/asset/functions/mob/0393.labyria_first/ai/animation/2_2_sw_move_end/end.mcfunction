#> asset:mob/0393.labyria_first/ai/animation/2_2_sw_move_end/end
#
# 終了処理（次の技への移行）
#
# @within function
#   asset:mob/0393.labyria_first/ai/animation/2_2_sw_move_end/
#   asset:mob/0393.labyria_first/ai/animation/2_3_ms_move_end/

# スコアをリセットする
    scoreboard players reset @s AX.AnimationNum
    scoreboard players set @s AX.AnimationTick 0

# スコアをOMDから代入する
    execute store result score @s AX.AnimationNum run data get storage asset:context this.AnimationNum

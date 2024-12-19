#> asset:mob/0393.labyria_first/ai/animation/13_0_ms_hexa_laser/end
#
# 終了処理
#
# @within function asset:mob/0393.labyria_first/ai/animation/13_0_ms_hexa_laser/

# アイドルモーションに移行
    scoreboard players set @s AX.AnimationNum 12

# アニメーションリセット
    scoreboard players set @s AX.AnimationTick 0

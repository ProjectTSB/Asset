#> asset:mob/0393.labyria_first/ai/animation/12_0_ms_magic_bullets/end
#
# 終了処理
#
# @within function asset:mob/0393.labyria_first/ai/animation/12_0_ms_magic_bullets/

# アイドルモーションに移行
    scoreboard players set @s AX.AnimationNum 12

# アニメーションリセット
    scoreboard players set @s AX.AnimationTick 0

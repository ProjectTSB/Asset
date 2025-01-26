#> asset:mob/0393.labyria_first/ai/animation/10_0_sw_nova/end
#
# 終了処理
#
# @within function asset:mob/0393.labyria_first/ai/animation/10_0_sw_nova/

# アイドルモーションに移行
    scoreboard players set @s AX.AnimationNum 10
    execute if predicate lib:random_pass_per/5 run scoreboard players set @s AX.AnimationNum 11

# アニメーションリセット
    scoreboard players set @s AX.AnimationTick 0

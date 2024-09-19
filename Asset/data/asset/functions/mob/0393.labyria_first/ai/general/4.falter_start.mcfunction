#> asset:mob/0393.labyria_first/ai/general/4.falter_start
#
# 怯みアニメーション 開始
#
# @within function asset:mob/0393.labyria_first/**

# アニメーションストップ
    function asset:mob/0393.labyria_first/ai/animation/all_stop

# 怯みアニメーション
    scoreboard players set @s AZ.AnimationNum 990
    execute if predicate lib:random_pass_per/50 run scoreboard players set @s AZ.AnimationNum 991

# アニメーションリセット
    scoreboard players set @s AZ.AnimationTick 0

# 怯み回数を増やす
    scoreboard players add @s AZ.FalterCount 1

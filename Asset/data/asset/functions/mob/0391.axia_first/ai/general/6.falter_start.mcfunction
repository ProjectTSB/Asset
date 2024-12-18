#> asset:mob/0391.axia_first/ai/general/6.falter_start
#
# 怯みアニメーション 開始
#
# @within function asset:mob/0391.axia_first/**

# アニメーションストップ
    function asset:mob/0391.axia_first/ai/animation/all_stop

# 怯みアニメーション
    scoreboard players set @s AV.AnimationNum 990
    execute if predicate lib:random_pass_per/50 run scoreboard players set @s AV.AnimationNum 991

# アニメーションリセット
    scoreboard players set @s AV.AnimationTick 0

# 怯み回数を増やす
    scoreboard players add @s AV.FalterCount 1

#> asset:mob/0341.louvert/hurt/2.4.falter_start
#
# 怯む アニメーション
#
# @within function asset:mob/0341.louvert/hurt/2.hurt

# アニメーションストップ
    function asset:mob/0341.louvert/tick/animation/all_stop

# ラストスペル
    scoreboard players set @s 9H.AnimationNum 21
    execute if predicate lib:random_pass_per/50 run scoreboard players set @s 9H.AnimationNum 22

# アニメーションリセット
    scoreboard players set @s 9H.AnimationTick 0

# 怯み回数を増やす
    scoreboard players add @s 9H.FalterCount 1
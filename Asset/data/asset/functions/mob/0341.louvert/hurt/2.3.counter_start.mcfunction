#> asset:mob/0341.louvert/hurt/2.3.counter_start
#
# カウンター 開始
#
# @within function asset:mob/0341.louvert/hurt/2.hurt

# アニメーションストップ
    function asset:mob/0341.louvert/tick/animation/all_stop

# ラストスペル
    scoreboard players set @s 9H.AnimationNum 101

# アニメーションリセット
    scoreboard players set @s 9H.AnimationTick 0

# カウンターをしたという印
    tag @s add 9H.Guard.Counter
    tag @s add 9H.Guard.Countered
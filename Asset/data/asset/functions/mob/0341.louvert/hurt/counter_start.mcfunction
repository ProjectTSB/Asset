#> asset:mob/0341.louvert/hurt/counter_start
#
# カウンター開始
#
# @within function asset:mob/0341.louvert/hurt/

# アニメーションストップ
    function asset:mob/0341.louvert/tick/animation/all_stop

# カウンターアニメーション移行
    scoreboard players set @s 9H.AnimationNum 101

# アニメーションリセット
    scoreboard players set @s 9H.AnimationTick 0

# カウンターをしたという印
    tag @s add 9H.Guard.Counter

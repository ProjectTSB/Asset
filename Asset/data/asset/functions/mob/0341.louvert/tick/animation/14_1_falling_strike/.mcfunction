#> asset:mob/0341.louvert/tick/animation/14_1_falling_strike/
#
# 刺突落下
#
# @within function asset:mob/0341.louvert/tick/animation/

# アニメーション開始
    execute if score @s 9H.AnimationTick matches 1 as @e[type=item_display,tag=9H.Root.This,distance=..100] run function animated_java:louvert/animations/14_1_falling_strike/play

# TPする
    execute if score @s 9H.AnimationTick matches 1 run function asset:mob/0341.louvert/tick/animation/14_1_falling_strike/tp_upper

# TPで落下
    execute if score @s 9H.AnimationTick matches 27 run function asset:mob/0341.louvert/tick/animation/14_1_falling_strike/tp_downer

# 演出
    execute if score @s 9H.AnimationTick matches 27 at @s run function asset:mob/0341.louvert/tick/animation/14_1_falling_strike/tp_damage

# ソウルクエイク発動1
    execute if score @s 9H.AnimationTick matches 30 run function asset:mob/0341.louvert/tick/animation/14_1_falling_strike/first

# ソウルクエイク発動2
    execute if score @s 9H.AnimationTick matches 33 run function asset:mob/0341.louvert/tick/animation/14_1_falling_strike/second

# ソウルクエイク発動3
    execute if score @s 9H.AnimationTick matches 36 if predicate api:global_vars/difficulty/min/3_blessless run function asset:mob/0341.louvert/tick/animation/14_1_falling_strike/third

# ソウルクエイク発動4
    execute if score @s 9H.AnimationTick matches 39 if predicate api:global_vars/difficulty/min/3_blessless run function asset:mob/0341.louvert/tick/animation/14_1_falling_strike/forth

# 追尾ソウルクエイク発動
    tag @s add 9H.Temp.This
    execute if score @s 9H.AnimationTick matches 39 if predicate api:global_vars/difficulty/min/3_blessless as @a[tag=!PlayerShouldInvulnerable,distance=..100,limit=4] as @e[tag=9H.Temp.This,distance=..100] run function asset:mob/0341.louvert/tick/animation/14_1_falling_strike/hard
    tag @s remove 9H.Temp.This

# アニメーション終了処理
    execute if score @s 9H.AnimationTick matches 56 run function asset:mob/0341.louvert/tick/general/9.animation_end

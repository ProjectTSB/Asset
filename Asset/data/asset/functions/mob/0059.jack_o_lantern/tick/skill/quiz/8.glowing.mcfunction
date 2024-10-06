#> asset:mob/0059.jack_o_lantern/tick/skill/quiz/8.glowing
#
# 発光中の処理
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill/quiz/1.main

# 発光中の演出
    particle flame ~ ~1.8 ~ 0.6 0.6 0.6 0 2 normal @a
    particle dust 1 0.82 0.49 1 ~ ~1.8 ~ 0.6 0.6 0.6 0 2 normal @a
    execute if predicate lib:random_pass_per/5 run playsound entity.witch.celebrate hostile @a ~ ~ ~ 1 2 0

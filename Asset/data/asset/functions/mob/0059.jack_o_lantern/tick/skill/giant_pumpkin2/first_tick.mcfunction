#> asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/first_tick
#
# 最初のTickのみ実行する
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/

# NoAI化する
    data modify entity @s NoAI set value 1b

# 左回転か右回転か判定
    execute if predicate lib:random_pass_per/50 run tag @s add 1N.GiantPumpkin2.LeftRotate

# 紫の残像かオレンジの残像か設定
    execute if predicate lib:random_pass_per/50 run tag @s add 1N.GiantPumpkin2.PurpleMirage

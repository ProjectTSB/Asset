#> asset:mob/0059.jack_o_lantern/tick/skill/reset
#
# リセット
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill/**

# NoGravity解除
    data modify entity @s NoGravity set value 0b
    data modify entity @s NoAI set value 0b

# タグ消す
    tag @s remove 1N.Quiz
    tag @s remove 1N.GiantPumpkin1
    tag @s remove 1N.GiantPumpkin2
    tag @s remove 1N.Shoot

# スコアを変える
    scoreboard players set @s 1N.Tick -50

# 一部フィールドのリセット
    data remove storage asset:context this.TargetID

# 確率でテレポ
    #execute if predicate lib:random_pass_per/20 at @p run function asset:mob/0059.jack_o_lantern/tick/spread_tp

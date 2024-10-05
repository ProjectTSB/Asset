#> asset:mob/0059.jack_o_lantern/tick/skill_branch
#
# スキル処理の分岐
#
# @within function asset:mob/0059.jack_o_lantern/tick/

# クイズ
    execute if entity @s[tag=1N.Quiz] run function asset:mob/0059.jack_o_lantern/tick/skill/quiz/1.main

# 巨大カボチャ転がし
    execute if entity @s[tag=1N.GiantPumpkin1] run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin1/1.main

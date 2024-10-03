#> asset:mob/0059.jack_o_lantern/tick/skill/quiz/6.end
#
#
#
# @within function
#   asset:mob/0059.jack_o_lantern/tick/skill/quiz/1.main
#   asset:mob/0059.jack_o_lantern/tick/skill/quiz/4.quiz_clear

# 頭を変える
    item replace entity @s armor.head with carved_pumpkin{CustomModelData:20016}

# 共通リセット処理
    function asset:mob/0059.jack_o_lantern/tick/skill/reset

#> asset:mob/0059.jack_o_lantern/tick/skill/quiz/end
#
# クイズの終了処理
#
# @within function
#   asset:mob/0059.jack_o_lantern/tick/skill/quiz/
#   asset:mob/0059.jack_o_lantern/tick/skill/quiz/quiz_clear

# 発光状態だったなら演出とバフ解除
    execute if entity @s[tag=1N.Quiz.Glowing] run particle large_smoke ~ ~1.8 ~ 0 0 0 0.1 50 normal @a
    execute if entity @s[tag=1N.Quiz.Glowing] run playsound block.fire.extinguish hostile @a ~ ~ ~ 1 0.7 0
    execute if entity @s[tag=1N.Quiz.Glowing] run effect clear @s speed

# 頭を変える
    item replace entity @s armor.head with carved_pumpkin{CustomModelData:20016}

# 偽物を消し飛ばす
    function asset:mob/0059.jack_o_lantern/tick/skill/quiz/kill_all_fake

# 共通リセット処理
    function asset:mob/0059.jack_o_lantern/tick/skill/reset

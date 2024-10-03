#> asset:mob/0059.jack_o_lantern/tick/skill/quiz/11.end
#
#
#
# @within function
#   asset:mob/0059.jack_o_lantern/tick/skill/quiz/1.main
#   asset:mob/0059.jack_o_lantern/tick/skill/quiz/5.quiz_clear

# 発光状態だったなら演出
    execute if entity @s[scores={1N.Tick=260..}] run particle large_smoke ~ ~1.8 ~ 0 0 0 0.1 50 normal @a
    execute if entity @s[scores={1N.Tick=260..}] run playsound block.fire.extinguish hostile @a ~ ~ ~ 1 0.7 0

# 頭を変える
    item replace entity @s armor.head with carved_pumpkin{CustomModelData:20016}

# 共通リセット処理
    function asset:mob/0059.jack_o_lantern/tick/skill/reset

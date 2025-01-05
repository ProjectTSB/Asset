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

# 発光状態用Tagを削除
    tag @s remove 1N.DisableParticle

# 頭を元に戻す
    item replace entity @s armor.head with stick{CustomModelData:20394}

# 偽物を消し飛ばす
    function asset:mob/0059.jack_o_lantern/tick/skill/quiz/kill_all_fake

# 共通リセット処理
    function asset:mob/0059.jack_o_lantern/tick/skill/reset

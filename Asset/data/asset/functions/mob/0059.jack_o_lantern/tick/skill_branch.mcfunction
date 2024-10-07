#> asset:mob/0059.jack_o_lantern/tick/skill_branch
#
# スキル処理の分岐
#
# @within function asset:mob/0059.jack_o_lantern/tick/

# クイズ
    execute if entity @s[tag=1N.Quiz] run function asset:mob/0059.jack_o_lantern/tick/skill/quiz/1.main

# 巨大カボチャ転がし
    execute if entity @s[tag=1N.GiantPumpkin1] run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin1/1.main

# 巨大カボチャ転がし2
# 仕様上スポーンマーカーの位置で実行する
    execute if entity @s[tag=1N.GiantPumpkin2] at @e[type=marker,tag=1N.SpawnMarker,distance=..30,limit=1] run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/1.main

# カボチャミサイル
    execute if entity @s[tag=1N.Shoot] run function asset:mob/0059.jack_o_lantern/tick/skill/shoot/1.main

#> asset:mob/0059.jack_o_lantern/tick/skill_branch
#
# スキル処理の分岐
#
# @within function asset:mob/0059.jack_o_lantern/tick/

# クイズ
    execute if entity @s[tag=1N.Quiz] run function asset:mob/0059.jack_o_lantern/tick/skill/quiz/

# 巨大カボチャ転がし
    execute if entity @s[tag=1N.GiantPumpkin1] run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin1/

# 巨大カボチャ転がし2
# 仕様上スポーンマーカーの位置で実行する
    execute if entity @s[tag=1N.GiantPumpkin2] at @e[type=marker,tag=1N.SpawnMarker,distance=..30,limit=1] run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/

# カボチャミサイル
    execute if entity @s[tag=1N.Missile] run function asset:mob/0059.jack_o_lantern/tick/skill/missile/

# 超巨大カボチャ
    execute if entity @s[tag=1N.PumpkinRain] run function asset:mob/0059.jack_o_lantern/tick/skill/pumpkin_rain/

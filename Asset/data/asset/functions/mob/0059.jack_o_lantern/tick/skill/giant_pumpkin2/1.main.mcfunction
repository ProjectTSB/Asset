#> asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/1.main
#
#
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill_branch

# このmcfのコマンド全てはスポーンマーカーの位置で実行される

# スポーンマーカーを中心として巨大カボチャを召喚
    execute if entity @s[scores={1N.Tick=0}] run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/pos_type/1

    execute if entity @s[scores={1N.Tick=50}] run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/pos_type/2

    execute if entity @s[scores={1N.Tick=130}] run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/pos_type/3

# リセット
    execute if entity @s[scores={1N.Tick=150..}] run function asset:mob/0059.jack_o_lantern/tick/skill/reset

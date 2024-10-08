#> asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/1.main
#
#
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill_branch

# このmcfのコマンド全てはスポーンマーカーの位置で実行される

# スポーンマーカーを中心として巨大カボチャを召喚

# 自身に50%の確率でTagを付与
    execute if entity @s[scores={1N.Tick=0}] run tag @s add 1N.Random

# 網目状にカボチャを転がす
    execute if entity @s[tag=1N.Random,scores={1N.Tick=0}] run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/pos_type/normal1
    execute if entity @s[tag=!1N.Random,scores={1N.Tick=0}] run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/pos_type/normal2

# ハード以上なら25tickまで飛ばす
    execute if entity @s[scores={1N.Tick=0}] if predicate api:global_vars/difficulty/min/hard run scoreboard players set @s 1N.Tick 25

    execute if entity @s[tag=1N.Random,scores={1N.Tick=50}] run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/pos_type/normal2
    execute if entity @s[tag=!1N.Random,scores={1N.Tick=50}] run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/pos_type/normal1

# Tagを削除
    execute if entity @s[scores={1N.Tick=50}] run tag @s remove 1N.Random

# ハード以上なら70tickまで飛ばす
    execute if entity @s[scores={1N.Tick=50}] if predicate api:global_vars/difficulty/min/hard run scoreboard players set @s 1N.Tick 70

# 直線に並んだやつを転がす
    execute if entity @s[scores={1N.Tick=130}] run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/2.select_line

# 直線に並んでるけど、1つだけ空いてるやつを転がす
    execute if entity @s[scores={1N.Tick=200}] run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/3.select_line_with_space

# リセット
    execute if entity @s[scores={1N.Tick=180..}] if predicate api:global_vars/difficulty/max/normal run function asset:mob/0059.jack_o_lantern/tick/skill/reset
    execute if entity @s[scores={1N.Tick=250..}] if predicate api:global_vars/difficulty/min/hard run function asset:mob/0059.jack_o_lantern/tick/skill/reset

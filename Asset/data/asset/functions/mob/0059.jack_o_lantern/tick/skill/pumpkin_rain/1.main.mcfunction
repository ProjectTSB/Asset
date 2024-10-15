#> asset:mob/0059.jack_o_lantern/tick/skill/pumpkin_rain/1.main
#
# カボチャの雨のメイン処理
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill_branch

# 最初のtickに実行すること
    execute if entity @s[scores={1N.Tick=0}] run function asset:mob/0059.jack_o_lantern/tick/skill/pumpkin_rain/2.first_tick

# 召喚
    execute if entity @s[scores={1N.Tick=20..240}] run function asset:mob/0059.jack_o_lantern/tick/skill/pumpkin_rain/3.interval

# カボチャの雨の終わり
    execute if entity @s[scores={1N.Tick=260}] run function asset:mob/0059.jack_o_lantern/tick/skill/pumpkin_rain/10.end

# リセット
    execute if entity @s[scores={1N.Tick=300..}] run function asset:mob/0059.jack_o_lantern/tick/skill/reset

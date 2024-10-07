#> asset:mob/0059.jack_o_lantern/tick/skill/shoot/1.main
#
#
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill_branch

# カボチャミサイルを撃つ
    execute if entity @s[scores={1N.Tick=0..5}] run function asset:mob/0059.jack_o_lantern/tick/skill/shoot/2.shoot


# リセット
    execute if entity @s[scores={1N.Tick=60..}] run function asset:mob/0059.jack_o_lantern/tick/skill/reset

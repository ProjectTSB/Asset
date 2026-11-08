#> asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/difficulty/blessless
#
#
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/

# 交差するカボチャ転がし
    execute if entity @s[scores={General.Mob.Tick=0..25}] run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/select_cross/blessless

# 1方向からの転がし
    execute if entity @s[scores={General.Mob.Tick=110}] run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/select_line/
# 2方向からの1マス空きの転がし
    execute if entity @s[scores={General.Mob.Tick=180}] run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/select_line/with_space

# リセット
    execute if entity @s[scores={General.Mob.Tick=280..}] run function asset:mob/0059.jack_o_lantern/tick/skill/reset

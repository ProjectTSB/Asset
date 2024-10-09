#> asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin1/1.main
#
# カボチャ転がし1のメイン処理
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill_branch

# 最初に鈍足を自身に付与し、プレイヤーの方を向く
    execute if entity @s[scores={1N.Tick=0}] run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin1/2.first_tick
    execute if entity @s[scores={1N.Tick=0..19}] run tp @s ~ ~ ~ facing entity @p eyes

# 前方に巨大カボチャを召喚


# パターン1 中央スタート
    execute if entity @s[tag=1N.GiantPumpkin1.Center,scores={1N.Tick=20}] rotated ~ 0 positioned ^ ^ ^3.5 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin1/3.summon
    execute if entity @s[tag=1N.GiantPumpkin1.Center,scores={1N.Tick=30}] rotated ~ 0 positioned ^3 ^ ^3.5 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin1/3.summon
    execute if entity @s[tag=1N.GiantPumpkin1.Center,scores={1N.Tick=30}] rotated ~ 0 positioned ^-3 ^ ^3.5 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin1/3.summon
    execute if entity @s[tag=1N.GiantPumpkin1.Center,scores={1N.Tick=40}] rotated ~ 0 positioned ^6 ^ ^3.5 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin1/3.summon
    execute if entity @s[tag=1N.GiantPumpkin1.Center,scores={1N.Tick=40}] rotated ~ 0 positioned ^-6 ^ ^3.5 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin1/3.summon

# パターン2 左スタート
    execute if entity @s[tag=1N.GiantPumpkin1.Left,scores={1N.Tick=20}] rotated ~ 0 positioned ^6 ^ ^3.5 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin1/3.summon
    execute if entity @s[tag=1N.GiantPumpkin1.Left,scores={1N.Tick=25}] rotated ~ 0 positioned ^3 ^ ^3.5 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin1/3.summon
    execute if entity @s[tag=1N.GiantPumpkin1.Left,scores={1N.Tick=30}] rotated ~ 0 positioned ^0 ^ ^3.5 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin1/3.summon
    execute if entity @s[tag=1N.GiantPumpkin1.Left,scores={1N.Tick=35}] rotated ~ 0 positioned ^-3 ^ ^3.5 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin1/3.summon
    execute if entity @s[tag=1N.GiantPumpkin1.Left,scores={1N.Tick=40}] rotated ~ 0 positioned ^-6 ^ ^3.5 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin1/3.summon

# パターン3 右スタート
    execute if entity @s[tag=1N.GiantPumpkin1.Right,scores={1N.Tick=20}] rotated ~ 0 positioned ^-6 ^ ^3.5 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin1/3.summon
    execute if entity @s[tag=1N.GiantPumpkin1.Right,scores={1N.Tick=25}] rotated ~ 0 positioned ^-3 ^ ^3.5 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin1/3.summon
    execute if entity @s[tag=1N.GiantPumpkin1.Right,scores={1N.Tick=30}] rotated ~ 0 positioned ^0 ^ ^3.5 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin1/3.summon
    execute if entity @s[tag=1N.GiantPumpkin1.Right,scores={1N.Tick=35}] rotated ~ 0 positioned ^3 ^ ^3.5 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin1/3.summon
    execute if entity @s[tag=1N.GiantPumpkin1.Right,scores={1N.Tick=40}] rotated ~ 0 positioned ^6 ^ ^3.5 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin1/3.summon

# リセット
    execute if entity @s[scores={1N.Tick=50..}] run function asset:mob/0059.jack_o_lantern/tick/skill/reset

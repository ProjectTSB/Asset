#> asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin1/
#
# カボチャ転がし1のメイン処理
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill_branch

# 最初に鈍足を自身に付与し、プレイヤーの方を向く
    execute if entity @s[scores={General.Mob.Tick=0}] run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin1/first_tick
    execute if entity @s[scores={General.Mob.Tick=0..19}] facing entity @p eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~

# 前方に巨大カボチャを召喚

# パターン1 中央スタート
    execute if entity @s[tag=1N.GiantPumpkin1.Center,scores={General.Mob.Tick=20}] rotated ~ 0 positioned ^ ^ ^3.5 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin1/summon
    execute if entity @s[tag=1N.GiantPumpkin1.Center,scores={General.Mob.Tick=30}] rotated ~ 0 positioned ^3 ^ ^3.5 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin1/summon
    execute if entity @s[tag=1N.GiantPumpkin1.Center,scores={General.Mob.Tick=30}] rotated ~ 0 positioned ^-3 ^ ^3.5 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin1/summon
    execute if entity @s[tag=1N.GiantPumpkin1.Center,scores={General.Mob.Tick=40}] rotated ~ 0 positioned ^6 ^ ^3.5 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin1/summon
    execute if entity @s[tag=1N.GiantPumpkin1.Center,scores={General.Mob.Tick=40}] rotated ~ 0 positioned ^-6 ^ ^3.5 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin1/summon

# パターン2 左スタート
    execute if entity @s[tag=1N.GiantPumpkin1.Left,scores={General.Mob.Tick=20}] rotated ~ 0 positioned ^6 ^ ^3.5 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin1/summon
    execute if entity @s[tag=1N.GiantPumpkin1.Left,scores={General.Mob.Tick=25}] rotated ~ 0 positioned ^3 ^ ^3.5 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin1/summon
    execute if entity @s[tag=1N.GiantPumpkin1.Left,scores={General.Mob.Tick=30}] rotated ~ 0 positioned ^0 ^ ^3.5 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin1/summon
    execute if entity @s[tag=1N.GiantPumpkin1.Left,scores={General.Mob.Tick=35}] rotated ~ 0 positioned ^-3 ^ ^3.5 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin1/summon
    execute if entity @s[tag=1N.GiantPumpkin1.Left,scores={General.Mob.Tick=40}] rotated ~ 0 positioned ^-6 ^ ^3.5 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin1/summon

# パターン3 右スタート
    execute if entity @s[tag=1N.GiantPumpkin1.Right,scores={General.Mob.Tick=20}] rotated ~ 0 positioned ^-6 ^ ^3.5 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin1/summon
    execute if entity @s[tag=1N.GiantPumpkin1.Right,scores={General.Mob.Tick=25}] rotated ~ 0 positioned ^-3 ^ ^3.5 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin1/summon
    execute if entity @s[tag=1N.GiantPumpkin1.Right,scores={General.Mob.Tick=30}] rotated ~ 0 positioned ^0 ^ ^3.5 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin1/summon
    execute if entity @s[tag=1N.GiantPumpkin1.Right,scores={General.Mob.Tick=35}] rotated ~ 0 positioned ^3 ^ ^3.5 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin1/summon
    execute if entity @s[tag=1N.GiantPumpkin1.Right,scores={General.Mob.Tick=40}] rotated ~ 0 positioned ^6 ^ ^3.5 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin1/summon

# リセット
    execute if entity @s[scores={General.Mob.Tick=50..}] run function asset:mob/0059.jack_o_lantern/tick/skill/reset

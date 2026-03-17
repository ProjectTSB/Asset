#> asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin1/
#
# カボチャ転がし1のメイン処理
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill_branch

# 最初に鈍足を自身に付与し、プレイヤーの方を向く
    execute if entity @s[scores={General.Mob.Tick=0}] run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin1/first_tick

# 着地するまで絶対にスコアを1で固定する
    execute if entity @s[scores={General.Mob.Tick=2}] if data entity @s {OnGround:0b} run scoreboard players set @s General.Mob.Tick 1

# 着地後はNoAIになり、その後Rotationを固定する
    execute if entity @s[scores={General.Mob.Tick=2}] run data modify entity @s NoAI set value 1b
    execute if entity @s[scores={General.Mob.Tick=2..}] run data modify entity @s Rotation[0] set from storage asset:context this.SavedRotation0

# 前方に巨大カボチャを召喚

# パターン1 中央スタート
    execute if entity @s[tag=1N.GiantPumpkin1.Center,scores={General.Mob.Tick=20}] rotated ~ 0 positioned ^ ^ ^3.5 run function asset:mob/0059.jack_o_lantern/tick/skill/common/giant_pumpkin/neutral
    execute if entity @s[tag=1N.GiantPumpkin1.Center,scores={General.Mob.Tick=30}] rotated ~ 0 positioned ^3 ^ ^3.5 run function asset:mob/0059.jack_o_lantern/tick/skill/common/giant_pumpkin/neutral
    execute if entity @s[tag=1N.GiantPumpkin1.Center,scores={General.Mob.Tick=30}] rotated ~ 0 positioned ^-3 ^ ^3.5 run function asset:mob/0059.jack_o_lantern/tick/skill/common/giant_pumpkin/neutral
    execute if entity @s[tag=1N.GiantPumpkin1.Center,scores={General.Mob.Tick=40}] rotated ~ 0 positioned ^6 ^ ^3.5 run function asset:mob/0059.jack_o_lantern/tick/skill/common/giant_pumpkin/neutral
    execute if entity @s[tag=1N.GiantPumpkin1.Center,scores={General.Mob.Tick=40}] rotated ~ 0 positioned ^-6 ^ ^3.5 run function asset:mob/0059.jack_o_lantern/tick/skill/common/giant_pumpkin/neutral

# パターン2 左スタート
    execute if entity @s[tag=1N.GiantPumpkin1.Left,scores={General.Mob.Tick=20}] rotated ~ 0 positioned ^6 ^ ^3.5 run function asset:mob/0059.jack_o_lantern/tick/skill/common/giant_pumpkin/neutral
    execute if entity @s[tag=1N.GiantPumpkin1.Left,scores={General.Mob.Tick=25}] rotated ~ 0 positioned ^3 ^ ^3.5 run function asset:mob/0059.jack_o_lantern/tick/skill/common/giant_pumpkin/neutral
    execute if entity @s[tag=1N.GiantPumpkin1.Left,scores={General.Mob.Tick=30}] rotated ~ 0 positioned ^0 ^ ^3.5 run function asset:mob/0059.jack_o_lantern/tick/skill/common/giant_pumpkin/neutral
    execute if entity @s[tag=1N.GiantPumpkin1.Left,scores={General.Mob.Tick=35}] rotated ~ 0 positioned ^-3 ^ ^3.5 run function asset:mob/0059.jack_o_lantern/tick/skill/common/giant_pumpkin/neutral
    execute if entity @s[tag=1N.GiantPumpkin1.Left,scores={General.Mob.Tick=40}] rotated ~ 0 positioned ^-6 ^ ^3.5 run function asset:mob/0059.jack_o_lantern/tick/skill/common/giant_pumpkin/neutral

# パターン3 右スタート
    execute if entity @s[tag=1N.GiantPumpkin1.Right,scores={General.Mob.Tick=20}] rotated ~ 0 positioned ^-6 ^ ^3.5 run function asset:mob/0059.jack_o_lantern/tick/skill/common/giant_pumpkin/neutral
    execute if entity @s[tag=1N.GiantPumpkin1.Right,scores={General.Mob.Tick=25}] rotated ~ 0 positioned ^-3 ^ ^3.5 run function asset:mob/0059.jack_o_lantern/tick/skill/common/giant_pumpkin/neutral
    execute if entity @s[tag=1N.GiantPumpkin1.Right,scores={General.Mob.Tick=30}] rotated ~ 0 positioned ^0 ^ ^3.5 run function asset:mob/0059.jack_o_lantern/tick/skill/common/giant_pumpkin/neutral
    execute if entity @s[tag=1N.GiantPumpkin1.Right,scores={General.Mob.Tick=35}] rotated ~ 0 positioned ^3 ^ ^3.5 run function asset:mob/0059.jack_o_lantern/tick/skill/common/giant_pumpkin/neutral
    execute if entity @s[tag=1N.GiantPumpkin1.Right,scores={General.Mob.Tick=40}] rotated ~ 0 positioned ^6 ^ ^3.5 run function asset:mob/0059.jack_o_lantern/tick/skill/common/giant_pumpkin/neutral

# リセット
    execute if entity @s[scores={General.Mob.Tick=70..}] run function asset:mob/0059.jack_o_lantern/tick/skill/reset

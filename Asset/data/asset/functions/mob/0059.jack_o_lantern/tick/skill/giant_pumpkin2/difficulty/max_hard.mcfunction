#> asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/difficulty/max_hard
#
#
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/

# 0tick目に配列を初期化し、2回転がす
    execute if entity @s[scores={General.Mob.Tick=0}] run data modify storage asset:context this.List set value [0,1,2,3]
    execute if entity @s[scores={General.Mob.Tick=0}] run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/select_cross/
    execute if entity @s[scores={General.Mob.Tick=50}] run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/select_cross/
    execute if entity @s[scores={General.Mob.Tick=130}] run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin2/select_line/

    execute if entity @s[scores={General.Mob.Tick=240..}] if predicate api:global_vars/difficulty/max/2_hard run function asset:mob/0059.jack_o_lantern/tick/skill/reset

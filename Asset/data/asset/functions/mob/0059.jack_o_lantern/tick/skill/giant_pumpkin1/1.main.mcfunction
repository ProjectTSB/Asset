#> asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin1/1.main
#
#
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill_branch

# 最初に鈍足を自身に付与し、プレイヤーの方を向く
    execute if entity @s[scores={1N.Tick=0}] run effect give @s slowness 10 10 true
    execute if entity @s[scores={1N.Tick=0}] run data modify entity @s NoAI set value 1b
    execute if entity @s[scores={1N.Tick=0}] run tp @s ~ ~ ~ facing entity @p eyes

# もう一度プレイヤーの方を向く
    execute if entity @s[scores={1N.Tick=19}] run tp @s ~ ~ ~ facing entity @p eyes

# 前方に巨大カボチャを召喚
    execute if entity @s[scores={1N.Tick=20}] rotated ~ 0 positioned ^ ^ ^3.5 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin1/2.summon
    execute if entity @s[scores={1N.Tick=30}] rotated ~ 0 positioned ^3 ^ ^3.5 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin1/2.summon
    execute if entity @s[scores={1N.Tick=30}] rotated ~ 0 positioned ^-3 ^ ^3.5 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin1/2.summon
    execute if entity @s[scores={1N.Tick=35}] rotated ~ 0 positioned ^6 ^ ^3.5 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin1/2.summon
    execute if entity @s[scores={1N.Tick=35}] rotated ~ 0 positioned ^-6 ^ ^3.5 run function asset:mob/0059.jack_o_lantern/tick/skill/giant_pumpkin1/2.summon



# リセット
    execute if entity @s[scores={1N.Tick=50..}] run function asset:mob/0059.jack_o_lantern/tick/skill/reset

#> asset:object/2262.gem_panjan_drone/tick/start_flame
#
# Objectのtick時の処理
#
# @within asset:object/2262.gem_panjan_drone/tick/event_attack

# flameに移行
    tag @s remove 2262.Phase.Attack
    tag @s add 2262.Phase.Flame
    scoreboard players set @s General.Object.Tick 0

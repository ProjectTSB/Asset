#> asset:object/2262.gem_panjan_drone/tick/start_attack
#
# Objectのtick時の処理
#
# @within asset:object/2262.gem_panjan_drone/tick/event_idle
# @within asset:object/2262.gem_panjan_drone/tick/event_move

# idleに移行
    tag @s remove 2262.Phase.Idle
    tag @s remove 2262.Phase.Move
    tag @s add 2262.Phase.Attack
    scoreboard players set @s General.Object.Tick 0

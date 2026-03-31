#> asset:object/2262.gem_panjan_drone/tick/start_move
#
# Objectのtick時の処理
#
# @within asset:object/2262.gem_panjan_drone/tick/event_idle

# idleに移行
    tag @s remove 2262.Phase.Idle
    tag @s add 2262.Phase.Move
    scoreboard players set @s General.Object.Tick 0

#> asset:object/2260.gem_attack_drone/tick/start_idle
#
# Objectのtick時の処理
#
# @within asset:object/2260.gem_attack_drone/tick/event_start

# idleに移行
    tag @s remove 2260.Phase.Start
    tag @s add 2260.Phase.Idle
    scoreboard players set @s General.Object.Tick 0

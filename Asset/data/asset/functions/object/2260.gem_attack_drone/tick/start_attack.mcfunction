#> asset:object/2260.gem_attack_drone/tick/start_attack
#
# Objectのtick時の処理
#
# @within asset:object/2260.gem_attack_drone/tick/event_idle

# idleに移行
    tag @s remove 2260.Phase.Idle
    tag @s add 2260.Phase.Attack
    scoreboard players set @s General.Object.Tick 0

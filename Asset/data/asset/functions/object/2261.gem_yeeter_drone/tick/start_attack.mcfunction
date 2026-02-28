#> asset:object/2261.gem_yeeter_drone/tick/start_attack
#
# Objectのtick時の処理
#
# @within asset:object/2261.gem_yeeter_drone/tick/event_idle

# idleに移行
    tag @s remove 2261.Phase.Idle
    tag @s add 2261.Phase.Attack
    scoreboard players set @s General.Object.Tick 0

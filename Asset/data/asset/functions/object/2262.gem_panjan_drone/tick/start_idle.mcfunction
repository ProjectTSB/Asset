#> asset:object/2262.gem_panjan_drone/tick/start_idle
#
# Objectのtick時の処理
#
# @within asset:object/2262.gem_panjan_drone/tick/event_start

# idleに移行
    tag @s remove 2262.Phase.Start
    tag @s add 2262.Phase.Idle
    scoreboard players set @s General.Object.Tick 0

# debug
    data modify storage api: Argument.ID set value 2272
    # execute store result storage api: Argument.FieldOverride.TargetPlayerId int 1 run scoreboard players get @a[tag=!PlayerShouldInvulnerable,distance=..80,sort=random,limit=1] UserID
    execute store result storage api: Argument.FieldOverride.TargetPlayerId int 1 run scoreboard players get @p UserID
    data modify storage api: Argument.FieldOverride.Tick set value 100
    execute positioned ~ ~2 ~ run function api:object/summon

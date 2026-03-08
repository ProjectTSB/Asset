#> asset:object/2262.gem_panjan_drone/tick/summon_target_line
#
# Objectのtick時の処理
#
# @within asset:object/2262.gem_panjan_drone/tick/event_start

# ターゲット線召喚
    data modify storage api: Argument.ID set value 2272
    data modify storage api: Argument.FieldOverride.TargetPlayerId set from storage asset:context this.TargetPlayerId
    data modify storage api: Argument.FieldOverride.Tick set value 100
    execute positioned ~ ~2 ~ run function api:object/summon

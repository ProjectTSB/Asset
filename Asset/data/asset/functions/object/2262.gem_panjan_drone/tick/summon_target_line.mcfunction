#> asset:object/2262.gem_panjan_drone/tick/summon_target_line
#
# Objectのtick時の処理
#
# @within asset:object/2262.gem_panjan_drone/tick/event_idle

# ターゲット線召喚
    data modify storage api: Argument.ID set value 2272
    data modify storage api: Argument.FieldOverride.TargetPlayerId set from storage asset:context this.TargetPlayerId
    data modify storage api: Argument.FieldOverride.Tick set value 400
    data modify storage api: Argument.FieldOverride.Color set value 16758123
    data modify storage api: Argument.FieldOverride.ObjectId set from storage asset:context this.ObjectId
    execute positioned ~ ~3 ~ run function api:object/summon

#> asset:object/2261.gem_yeeter_drone/tick/attack
#
# Objectのtick時の処理
#
# @within asset:object/2261.gem_yeeter_drone/tick/event_attack

# TNT設置
    data modify storage api: Argument.ID set value 2270
    data modify storage api: Argument.FieldOverride.MobUUID set from storage asset:context this.MobUUID
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage
    function api:object/summon

#> asset:object/2261.gem_yeeter_drone/tick/attack
#
# Objectのtick時の処理
#
# @within asset:object/2261.gem_yeeter_drone/tick/event_attack

# 空中には設置しない
    execute if block ~ ~-6 ~ #lib:no_collision run return 0

# TNT設置
    data modify storage api: Argument.ID set value 2270
    data modify storage api: Argument.FieldOverride.MobUUID set from storage asset:context this.MobUUID
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage
    $data modify storage api: Argument.FieldOverride.IsNoPrediction set value $(NoPrediction)
    function api:object/summon

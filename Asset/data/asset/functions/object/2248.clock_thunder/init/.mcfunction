#> asset:object/2248.clock_thunder/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2248/init

# 演出
    playsound minecraft:entity.puffer_fish.death hostile @a ~ ~ ~ 0.5 0.3

# 予告を召喚
    data modify storage api: Argument.ID set value 2063
    data modify storage api: Argument.FieldOverride set value {Color:16777024,Scale:[4f,4f,0.01f]}
    data modify storage api: Argument.FieldOverride.Tick set from storage asset:context this.Delay
    function api:object/summon

#> asset:object/2075.thunder_magic/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2075/init

# 演出
    playsound minecraft:entity.puffer_fish.death hostile @a ~ ~ ~ 1 0.3

# 予告を召喚
    data modify storage api: Argument.ID set value 2063
    data modify storage api: Argument.FieldOverride set value {Tick:20,Color:16757532,Scale:[4f,4f,0.01f]}
    function api:object/summon

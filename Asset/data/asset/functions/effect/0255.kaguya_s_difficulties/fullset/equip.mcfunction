#> asset:effect/0255.kaguya_s_difficulties/fullset/equip
# @within function
#   asset:effect/0255.kaguya_s_difficulties/given/
#   asset:effect/0255.kaguya_s_difficulties/re-given/

# 音
    playsound ogg:ambient.nether.crimson_forest.shine3 player @a ~ ~ ~ 1 1
    playsound ogg:ambient.nether.crimson_forest.shine1 player @a ~ ~ ~ 1 2

# 火耐性
    data modify storage api: Argument.UUID set value [I;1,3,255,0]
    data modify storage api: Argument.Amount set value 0.15
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/defense/fire/add
# 水耐性
    data modify storage api: Argument.UUID set value [I;1,3,255,0]
    data modify storage api: Argument.Amount set value 0.15
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/defense/water/add
# 物理耐性
    data modify storage api: Argument.UUID set value [I;1,3,255,0]
    data modify storage api: Argument.Amount set value 0.20
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/defense/physical/add
# 落下耐性
    data modify storage api: Argument.UUID set value [I;1,3,255,0]
    data modify storage api: Argument.Amount set value 0.25
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/fall_resistance/add

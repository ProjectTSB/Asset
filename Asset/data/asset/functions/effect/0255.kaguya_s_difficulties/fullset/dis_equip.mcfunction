#> asset:effect/0255.kaguya_s_difficulties/fullset/dis_equip
# @within function
#   asset:effect/0255.kaguya_s_difficulties/re-given/
#   asset:effect/0255.kaguya_s_difficulties/remove/

# 火耐性
    data modify storage api: Argument.UUID set value [I;1,3,255,0]
    function api:modifier/defense/fire/remove
# 水耐性
    data modify storage api: Argument.UUID set value [I;1,3,255,0]
    function api:modifier/defense/water/remove
# 物理耐性
    data modify storage api: Argument.UUID set value [I;1,3,255,0]
    function api:modifier/defense/physical/remove
# 落下耐性
    data modify storage api: Argument.UUID set value [I;1,3,255,0]
    function api:modifier/fall_resistance/remove

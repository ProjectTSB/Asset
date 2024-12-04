#> asset:effect/0243.oblivious_snow/fullset/dis_equip
# @within function
#   asset:effect/0243.oblivious_snow/re-given/
#   asset:effect/0243.oblivious_snow/remove/

# 補正
    # 水攻撃
        data modify storage api: Argument.UUID set value [I;1,3,243,0]
        function api:modifier/attack/water/remove

    # 被回復量
        data modify storage api: Argument.UUID set value [I;1,3,243,0]
        function api:modifier/receive_heal/remove

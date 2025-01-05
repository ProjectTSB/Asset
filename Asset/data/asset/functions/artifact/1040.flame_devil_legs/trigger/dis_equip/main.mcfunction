#> asset:artifact/1040.flame_devil_legs/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:artifact/1040.flame_devil_legs/trigger/dis_equip/

# 火攻撃+10%
    data modify storage api: Argument.UUID set value [I;1,1,1040,4]
    function api:modifier/attack/fire/remove

# 水攻撃-10%
    data modify storage api: Argument.UUID set value [I;1,1,1040,4]
    function api:modifier/attack/water/remove

# 魔法攻撃+5%
    data modify storage api: Argument.UUID set value [I;1,1,1040,4]
    function api:modifier/attack/magic/remove

# 魔法耐性+5%
    data modify storage api: Argument.UUID set value [I;1,1,1040,4]
    function api:modifier/defense/magic/remove

# MP回復量+2%
    data modify storage api: Argument.UUID set value [I;1,1,1040,4]
    function api:modifier/mp_regen/remove

# 装備時共通処理
    function asset:artifact/1038.flame_devil_head/trigger/common/dis_equip
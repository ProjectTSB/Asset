#> asset:artifact/0778.jade_armor/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:artifact/0778.jade_armor/trigger/dis_equip/

# 補正削除

# 水耐性+5%
    data modify storage api: Argument.UUID set value [I;1,1,778,3]
    function api:modifier/defense/water/remove

# 水攻撃+5%
    data modify storage api: Argument.UUID set value [I;1,1,778,3]
    function api:modifier/attack/water/remove

# MP回復量+4%
    data modify storage api: Argument.UUID set value [I;1,1,778,3]
    function api:modifier/mp_regen/remove

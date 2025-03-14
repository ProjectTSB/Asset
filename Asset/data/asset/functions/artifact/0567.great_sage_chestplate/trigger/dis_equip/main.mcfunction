#> asset:artifact/0567.great_sage_chestplate/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:artifact/0567.great_sage_chestplate/trigger/dis_equip/

# 魔法耐性+7.5%
    data modify storage api: Argument.UUID set value [I;1,1,567,5]
    function api:modifier/defense/magic/remove

# 魔法攻撃+7.5%
    data modify storage api: Argument.UUID set value [I;1,1,567,5]
    function api:modifier/attack/magic/remove

# MP回復量+10%
    data modify storage api: Argument.UUID set value [I;1,1,567,5]
    function api:modifier/mp_regen/remove

# 物理耐性-10%
    data modify storage api: Argument.UUID set value [I;1,1,567,5]
    function api:modifier/defense/physical/remove

# 物理攻撃-17.5%
    data modify storage api: Argument.UUID set value [I;1,1,567,5]
    function api:modifier/attack/physical/remove

# フルセット外す
    execute if entity @s[tag=FQ.Fullset] run function asset:artifact/0566.great_sage_helmet/trigger/fullset/dis_equip

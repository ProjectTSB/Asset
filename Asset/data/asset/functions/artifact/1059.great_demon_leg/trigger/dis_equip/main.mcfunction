#> asset:artifact/1059.great_demon_leg/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:artifact/1059.great_demon_leg/trigger/dis_equip/

# 物理攻撃+5%
    data modify storage api: Argument.UUID set value [I;1,1,1059,4]
    function api:modifier/attack/physical/remove

# 物理耐性+7.5%
    data modify storage api: Argument.UUID set value [I;1,1,1059,4]
    function api:modifier/defense/physical/remove

# 魔法攻撃-5%
    data modify storage api: Argument.UUID set value [I;1,1,1059,4]
    function api:modifier/attack/magic/remove

# 魔法耐性-5%
    data modify storage api: Argument.UUID set value [I;1,1,1059,4]
    function api:modifier/defense/magic/remove

# 装備時共通処理
    function asset:artifact/1057.great_demon_head/trigger/common/dis_equip
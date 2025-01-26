#> asset:artifact/0934.ideal_helmet/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:artifact/0934.ideal_helmet/trigger/dis_equip/

# 全耐性削除
    data modify storage api: Argument.UUID set value [I;1,1,934,6]
    function api:modifier/defense/base/remove

# 魔法攻撃削除
    data modify storage api: Argument.UUID set value [I;1,1,934,6]
    function api:modifier/attack/magic/remove

# 物理攻撃削除
    data modify storage api: Argument.UUID set value [I;1,1,934,6]
    function api:modifier/attack/physical/remove

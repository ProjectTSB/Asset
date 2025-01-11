#> asset:artifact/0819.swallows_cowry/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:artifact/0819.swallows_cowry/trigger/dis_equip/

# 耐性削除
    data modify storage api: Argument.UUID set value [I;1,1,816,5]
    function api:modifier/defense/fire/remove

    data modify storage api: Argument.UUID set value [I;1,1,817,6]
    function api:modifier/defense/water/remove

    data modify storage api: Argument.UUID set value [I;1,1,818,4]
    function api:modifier/defense/physical/remove

    data modify storage api: Argument.UUID set value [I;1,1,819,3]
    function api:modifier/fall_damage/remove

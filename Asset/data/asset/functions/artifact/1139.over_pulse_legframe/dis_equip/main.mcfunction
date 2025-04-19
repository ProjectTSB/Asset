#> asset:artifact/1139.over_pulse_legframe/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:artifact/1139.over_pulse_legframe/dis_equip/

# 落下耐性
    data modify storage api: Argument.UUID set value [I;1,1,1139,4]
    function api:modifier/fall_resistance/remove

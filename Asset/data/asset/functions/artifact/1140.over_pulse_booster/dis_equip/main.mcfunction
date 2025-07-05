#> asset:artifact/1140.over_pulse_booster/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:artifact/1140.over_pulse_booster/dis_equip/

# 落下耐性
    data modify storage api: Argument.UUID set value [I;1,1,1140,3]
    function api:modifier/fall_resistance/remove

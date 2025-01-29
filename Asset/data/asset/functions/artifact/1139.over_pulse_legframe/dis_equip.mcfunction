#> asset:artifact/1139.over_pulse_legframe/dis_equip
#
# 装備解除時に実行される処理
#
# @within function asset:artifact/alias/1139/dis_equip

# 跳躍力上昇を削除
    effect clear @s jump_boost

# 補正を削除
    data modify storage api: Argument.UUID set value [I;1,1,1139,4]
    function api:modifier/fall_damage/remove

#> asset:artifact/0818.bhuddas_bowl/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:artifact/0818.bhuddas_bowl/trigger/dis_equip/

# バフを削除
    effect clear @s fire_resistance
    effect clear @s haste
    effect clear @s resistance
    effect clear @s slow_falling

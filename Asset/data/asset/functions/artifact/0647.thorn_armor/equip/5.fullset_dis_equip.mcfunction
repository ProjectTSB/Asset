#> asset:artifact/0647.thorn_armor/equip/5.fullset_dis_equip
#
# フルセット解除の処理
#
# @within function
#   asset:artifact/0646.thorn_helm/equip/dis_equip/main
#   asset:artifact/0647.thorn_armor/equip/dis_equip/main
#   asset:artifact/0648.thorn_leggings/equip/dis_equip/main
#   asset:artifact/0649.thorn_boots/equip/dis_equip/main

# リセット
    tag @s remove HZ.FullSet
    scoreboard players reset @s HZ.CoolDown
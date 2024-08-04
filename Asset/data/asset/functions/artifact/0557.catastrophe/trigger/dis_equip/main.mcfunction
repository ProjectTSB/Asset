#> asset:artifact/0557.catastrophe/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:artifact/0557.catastrophe/trigger/dis_equip/

# フルセット解除処理
    execute if entity @s[tag=FE.Fullset] run function asset:artifact/0554.catastrophe/trigger/fullset/dis_equip

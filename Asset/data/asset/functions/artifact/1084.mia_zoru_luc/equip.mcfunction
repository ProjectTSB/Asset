#> asset:artifact/1084.mia_zoru_luc/equip
#
# 装備時に実行される処理
#
# @within function asset:artifact/alias/1084/equip

# 演出
    playsound entity.ravager.hurt player @a ~ ~ ~ 1 0.7
    particle block redstone_block ~ ~1.3 ~ 0 0 0 1 20

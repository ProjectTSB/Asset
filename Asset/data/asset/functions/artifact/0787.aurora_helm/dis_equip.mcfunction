#> asset:artifact/0787.aurora_helm/dis_equip
#
# 装備解除時に実行される処理
#
# @within function asset:artifact/alias/787/dis_equip

# 演出
    playsound minecraft:entity.evoker.prepare_summon player @a ~ ~ ~ 0.5 1.4 0
    particle dust_color_transition 0.000 1.000 0.886 1.5 0 0 0 ~ ~1.7 ~ 0.4 0.2 0.4 0 40 normal @a

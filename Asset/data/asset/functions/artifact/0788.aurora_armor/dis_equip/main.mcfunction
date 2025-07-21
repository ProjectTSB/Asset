#> asset:artifact/0788.aurora_armor/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:artifact/0788.aurora_armor/dis_equip/

# 演出
    playsound minecraft:entity.evoker.prepare_summon player @a ~ ~ ~ 0.5 1.4 0
    particle dust_color_transition 0.000 0.808 0.867 1.5 0 0 0 ~ ~1.2 ~ 0.4 0.4 0.4 0 40 normal @a


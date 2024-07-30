#> asset:artifact/0555.catastrophe/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0555.catastrophe/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/chest

# ここから先は神器側の効果の処理を書く

# 演出
    particle dust 0 0 -1 1 ~ ~1.1 ~ 0.4 0.2 0.4 0 30 normal @a
    particle soul_fire_flame ~ ~1.1 ~ 0.4 0.2 0.4 0 20 normal @a
    playsound minecraft:item.armor.equip_netherite player @a ~ ~ ~ 1 0.65
    playsound minecraft:entity.phantom.death player @a ~ ~ ~ 0.7 0.6






# フルセット処理
    execute if data storage asset:context id.all{head:554,chest:555,legs:556,feet:557} run function asset:artifact/0554.catastrophe/trigger/fullset/equip

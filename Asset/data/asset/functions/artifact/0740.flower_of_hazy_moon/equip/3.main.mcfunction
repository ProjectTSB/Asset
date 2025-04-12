#> asset:artifact/0740.flower_of_hazy_moon/equip/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0740.flower_of_hazy_moon/equip/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/hotbar
# 演出
    particle end_rod ~ ~1.3 ~ 0 0 0 0.05 10 normal @a
    particle end_rod ~ ~1.3 ~ 0 0 0 0.075 70 normal @a
    particle campfire_cosy_smoke ~ ~1.3 ~ 0.2 0.2 0.2 0.1 10 normal @a
    particle campfire_cosy_smoke ~ ~1.3 ~ 0.2 0.2 0.2 0.15 70 normal @a
    playsound minecraft:entity.allay.ambient_without_item player @a ~ ~ ~ 1 0.8
    playsound minecraft:entity.allay.ambient_with_item player @a ~ ~ ~ 1 0.5
# タグ付け
    tag @s add KH.Equipped

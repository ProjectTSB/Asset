#> asset:artifact/0743.evening_wind/equip/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0743.evening_wind/equip/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/hotbar
# ここから先は神器側の効果の処理を書く

# 演出
    particle dust_color_transition 1 0.373 0.373 1.6 1 0.635 0 ~ ~1.3 ~ 0.9 0.6 0.9 0 60 normal @a
    particle dust_color_transition 1 0.635 0 1.6 1 0.373 0.373 ~ ~1.3 ~ 0.9 0.6 0.9 0 60 normal @a
    particle flame ~ ~1.3 ~ 0.9 0.6 0.9 0.12 30 normal @a
    playsound block.fire.ambient player @a ~ ~ ~ 0.7 0.7 0
    playsound block.fire.ambient player @a ~ ~ ~ 0.7 0.8 0
    playsound block.fire.ambient player @a ~ ~ ~ 0.7 0.9 0
    playsound block.fire.ambient player @a ~ ~ ~ 0.7 1.1 0
    playsound block.lava.extinguish player @a ~ ~ ~ 0.5 0.9
# タグ付け
    tag @s add KK.Equipped

#> asset:artifact/1317.oblivious_feather/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1317.oblivious_feather/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/hotbar

# ここから先は神器側の効果の処理を書く

# 演出
    particle minecraft:falling_dust green_wool ~ ~1.2 ~ 1 1 1 0 15
    particle minecraft:falling_dust green_concrete ~ ~1.2 ~ 1 1 1 0 15
    execute anchored eyes positioned ^-0.1 ^ ^0.5 run particle dust 1 0 0 1 ~ ~ ~ 0 0 0 0 1
    playsound minecraft:entity.ender_dragon.flap player @a ~ ~ ~ 0.6 0.6

# Tag付け
    tag @s add 10L.Equip

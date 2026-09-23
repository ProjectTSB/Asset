#> asset:artifact/1615.ema_of_abundance/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1615.ema_of_abundance/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/hotbar

# ここから先は神器側の効果の処理を書く
# Tag
    tag @s add 18V.Equip

# 演出
    particle happy_villager ~ ~1.2 ~ 0.5 0.4 0.5 0 10 normal @a
    particle dust 0.776 1 0.808 1 ~ ~1.2 ~ 0.5 0.4 0.5 0 50 normal @a
    playsound minecraft:block.wood.place player @a ~ ~ ~ 3 1.5 0.0
    playsound minecraft:item.armor.equip_generic player @a ~ ~ ~ 1.0 0.8 0.0
    playsound minecraft:block.wood.step player @a ~ ~ ~ 1.0 2 0.0
    playsound minecraft:block.chain.place player @a ~ ~ ~ 0.6 0.7 0.0

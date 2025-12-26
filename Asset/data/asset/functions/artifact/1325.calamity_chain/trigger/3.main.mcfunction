#> asset:artifact/1325.calamity_chain/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1325.calamity_chain/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/hotbar

# ここから先は神器側の効果の処理を書く

# 装備検知用tag
    tag @s add 10T.Equip

# 演出
    particle dust 0.5 0 0 1 ~ ~1.2 ~ 1 1 1 0 50
    particle ash ~ ~1.2 ~ 1 1 1 0 80
    playsound minecraft:block.chain.place player @a ~ ~ ~ 1 0.5
    playsound minecraft:block.grindstone.use player @a ~ ~ ~ 0.6 0.6

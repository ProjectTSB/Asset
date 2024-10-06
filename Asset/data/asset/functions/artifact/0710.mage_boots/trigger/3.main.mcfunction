#> asset:artifact/0710.mage_boots/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0710.mage_boots/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/feet

# ここから先は神器側の効果の処理を書く

# 演出
    particle witch ~ ~0.3 ~ 0.3 0.1 0.3 1 10 normal @a
    particle enchant ~ ~0.3 ~ 0.4 0.1 0.4 0 30 normal @a
    playsound minecraft:block.enchantment_table.use player @a ~ ~ ~ 0.8 0 0

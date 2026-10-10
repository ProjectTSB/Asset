#> asset:artifact/1642.inversely_proportional_boots/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1642.inversely_proportional_boots/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/feet

# ここから先は神器側の効果の処理を書く
# 演出のみ
    playsound block.amethyst_block.break player @a ~ ~ ~ 1.0 0.7
    playsound item.armor.equip_diamond player @a ~ ~ ~ 1.0 1.0
    particle glow ~ ~1.5 ~ 0.2 0.5 0.2 1 20

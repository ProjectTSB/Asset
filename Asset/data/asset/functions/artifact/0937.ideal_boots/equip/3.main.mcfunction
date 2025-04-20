#> asset:artifact/0937.ideal_boots/equip/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0937.ideal_boots/equip/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/feet

# ここから先は神器側の効果の処理を書く

# 演出
    playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 1 2
    execute positioned ~ ~0.2 ~ run function asset:artifact/0937.ideal_boots/equip/vfx

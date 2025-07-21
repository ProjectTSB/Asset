#> asset:artifact/0936.ideal_leggings/equip/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0936.ideal_leggings/equip/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/legs

# ここから先は神器側の効果の処理を書く

# 演出
    playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 1 2
    execute positioned ~ ~0.5 ~ run function asset:artifact/0936.ideal_leggings/equip/vfx

#> asset:artifact/1470.ninja_hood/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1470.ninja_hood/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/head

# ここから先は神器側の効果の処理を書く
    playsound ogg:item.armor.equip_leather1 player @a ~ ~ ~ 1.0 1.0

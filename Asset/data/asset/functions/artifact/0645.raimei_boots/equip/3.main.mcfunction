#> asset:artifact/0645.raimei_boots/equip/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0645.raimei_boots/equip/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    data modify storage asset:artifact IgnoreItemUpdate set value true
    function asset:artifact/common/use/feet
# 演出
    playsound minecraft:block.respawn_anchor.charge player @s ~ ~ ~ 1 2

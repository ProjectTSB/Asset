#> asset:artifact/1430.shield_of_fate/trigger/equip/
#
# 装備を装備時に装備した部位にのみのidが入った状態でトリガーされる
#
# @within tag/function asset:artifact/equip

execute if data storage asset:context id{hotbar:[1430]} run function asset:artifact/1430.shield_of_fate/trigger/equip/main

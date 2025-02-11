#> asset:artifact/0986.order_of_healing/equip
#
# 装備時に実行される処理
#
# @within function asset:artifact/alias/986/equip

# MPペナルティ
    data modify storage api: Argument.Fluctuation set value -150
    data modify storage api: Argument.DisableLog set value true
    function api:mp/fluctuation

# VFX
    particle heart ~ ~1 ~ 0.4 0.4 0.4 1 8

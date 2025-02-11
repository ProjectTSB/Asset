#> asset:artifact/1213.sharpened_iron_axe/attack_melee/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/1213/attack_melee/


# ダメージ
    data modify storage api: Argument.Damage set value 310.0f
    data modify storage api: Argument.AttackType set value "Physical"
    function api:damage/modifier
    execute as @e[type=#lib:living,tag=Victim,distance=..6] run function api:damage/
    function api:damage/reset

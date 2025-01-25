#> asset:artifact/1215.sharpened_diamond_axe/attack_melee/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/1215/attack_melee/


# ダメージ
    data modify storage api: Argument.Damage set value 2450.0f
    data modify storage api: Argument.AttackType set value "Physical"
    function api:damage/modifier
    execute as @e[type=#lib:living,tag=Victim,distance=..6] run function api:damage/
    function api:damage/reset

#> asset:artifact/1211.sharpened_wooden_axe/attack_melee/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/1211/attack_melee/


# ダメージ
    data modify storage api: Argument.Damage set value 80.0f
    data modify storage api: Argument.AttackType set value "Physical"
    function api:damage/modifier
    execute as @e[type=#lib:living,tag=Victim,distance=..6] run function api:damage/
    function api:damage/reset

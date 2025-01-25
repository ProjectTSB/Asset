#> asset:artifact/1216.sharpened_netherite_axe/attack_melee/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/1216/attack_melee/

# ダメージ
    data modify storage api: Argument.Damage set value 2930.0f
    data modify storage api: Argument.AttackType set value "Physical"
    function api:damage/modifier
    execute as @e[type=#lib:living,tag=Victim,distance=..6] run function api:damage/
    function api:damage/reset

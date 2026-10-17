#> asset:artifact/1619.volt_rave/release_using_item/damage
#
#
#
# @within function asset:artifact/1619.volt_rave/release_using_item/recursive

# スタックでダメージを分岐
    execute if data storage api: Return.Effect{Stack:1} run data modify storage api: Argument.Damage set value 1000d
    execute if data storage api: Return.Effect{Stack:2} run data modify storage api: Argument.Damage set value 2000d

# ダメージを与える
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Thunder"
    execute as @p[tag=this] run function api:damage/modifier
    function api:damage/
    function api:damage/reset

#> asset:artifact/1619.volt_rave/release_using_item/damage
#
#
#
# @within function asset:artifact/1619.volt_rave/release_using_item/recursive

# フルチャージか否かでダメージを分岐
    execute if data storage asset:context this{IsFullCharge:false} run data modify storage api: Argument.Damage set value 1000d
    execute if data storage asset:context this{IsFullCharge: true} run data modify storage api: Argument.Damage set value 2000d

# ダメージを与える
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Thunder"
    execute as @p[tag=this] run function api:damage/modifier
    function api:damage/
    function api:damage/reset

#> asset:effect/0394.charge_of_volt_rave/end/damage
#
#
#
# @within function asset:effect/0394.charge_of_volt_rave/end/recursive

# フルチャージか否かでダメージを分岐
    execute if data storage asset:context this{IsFullCharge:false} run data modify storage api: Argument.Damage set from storage asset:context this.Damage.Normal
    execute if data storage asset:context this{IsFullCharge: true} run data modify storage api: Argument.Damage set from storage asset:context this.Damage.FullCharge

# ダメージを与える
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Thunder"
    execute as @a[tag=394.this] run function api:damage/modifier
    function api:damage/
    function api:damage/reset

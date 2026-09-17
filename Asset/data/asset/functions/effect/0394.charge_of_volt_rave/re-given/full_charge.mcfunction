#> asset:effect/0394.charge_of_volt_rave/re-given/full_charge
#
#
#
# @within function asset:effect/0394.charge_of_volt_rave/re-given/

# playsound
    execute anchored eyes positioned ^ ^ ^1 run playsound tsb_sounds:electric1 player @a ~ ~ ~ 1 1.6

# フィールド設定
    data modify storage asset:context this.IsFullCharge set value true

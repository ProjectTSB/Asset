#> asset:effect/0394.charge_of_volt_rave/re-given/before_charge
#
# チャージ直前用演出
#
# @within function asset:effect/0394.charge_of_volt_rave/re-given/

# 演出用Object召喚してみる
    data modify storage api: Argument.ID set value 1190
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    execute anchored eyes positioned ^-0.5 ^ ^1 run function api:object/summon

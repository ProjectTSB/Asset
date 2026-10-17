#> asset:artifact/1619.volt_rave/using_item/charge/before
#
#
#
# @within function asset:artifact/1619.volt_rave/using_item/charge/

# 演出用Object召喚してみる
    data modify storage api: Argument.ID set value 1190
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    execute anchored eyes positioned ^-0.5 ^ ^1 run function api:object/summon

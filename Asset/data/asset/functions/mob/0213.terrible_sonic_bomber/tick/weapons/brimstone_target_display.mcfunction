#> asset:mob/0213.terrible_sonic_bomber/tick/weapons/brimstone_target_display
#
# 
#
# @within function asset:mob/0213.terrible_sonic_bomber/tick/weapons/brimstone_prepare

# 実行位置にdisplayを出す
    data modify storage api: Argument.FieldOverride set value {Color:15453454,Tick:30,Scale:10f}
    execute store result storage api: Argument.FieldOverride.PlayerID int 1 run scoreboard players get @s UserID
    data modify storage api: Argument.ID set value 2202
    function api:object/summon

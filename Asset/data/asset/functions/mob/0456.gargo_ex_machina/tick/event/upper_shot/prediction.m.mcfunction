#> asset:mob/0456.gargo_ex_machina/tick/event/shot/prediction.m
#
# 射撃
#
# @within asset:mob/0456.gargo_ex_machina/tick/event/shot/

# 予告：円範囲
    data modify storage api: Argument.ID set value 2063
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.Color set value 3381759
    data modify storage api: Argument.FieldOverride.Scale set value [15f, 15f, 0.05f]
    $data modify storage api: Argument.FieldOverride.Tick set value $(Tick)
    execute positioned ^ ^ ^ rotated ~ 0 run function api:object/summon

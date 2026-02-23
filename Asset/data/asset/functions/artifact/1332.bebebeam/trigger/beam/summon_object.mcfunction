#> asset:artifact/1332.bebebeam/trigger/beam/summon_object
#
#
#
# @within function asset:artifact/1332.bebebeam/trigger/beam/shoot

#  データ設定
    data modify storage api: Argument.ID set value 2168
    data modify storage api: Argument.FieldOverride set value {Scale:[0.25f,0f,0.25f],Color:0,DisappearInterpolation:2,LifeTime:7}
    execute store result storage api: Argument.FieldOverride.Scale[1] float 1 run scoreboard players get $110.Range Temporary

# 属性に応じて色を変える
    execute if score @s 110.Element matches 0 run data modify storage api: Argument.FieldOverride.Color set value 16728852
    execute if score @s 110.Element matches 1 run data modify storage api: Argument.FieldOverride.Color set value 4685567
    execute if score @s 110.Element matches 2 run data modify storage api: Argument.FieldOverride.Color set value 16772431

# 召喚
    execute anchored eyes positioned ^ ^0 ^0.4 run function api:object/summon

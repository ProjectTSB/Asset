#> asset:effect/0434.overhauled_toaster_shooting/tick/shoot
#
#
#
# @within function asset:effect/0434.overhauled_toaster_shooting/tick/

# スタックに応じて弾速を調整
    execute if data storage asset:context {Stack:1} run data modify storage api: Argument.FieldOverride.Speed set from storage asset:context this.Speed[0]
    execute if data storage asset:context {Stack:2} run data modify storage api: Argument.FieldOverride.Speed set from storage asset:context this.Speed[1]
    execute if data storage asset:context {Stack:3} run data modify storage api: Argument.FieldOverride.Speed set from storage asset:context this.Speed[2]
    execute if data storage asset:context {Stack:4} run data modify storage api: Argument.FieldOverride.Speed set from storage asset:context this.Speed[3]
    execute if data storage asset:context {Stack:5} run data modify storage api: Argument.FieldOverride.Speed set from storage asset:context this.Speed[4]
    execute if data storage asset:context {Stack:6} run data modify storage api: Argument.FieldOverride.Speed set from storage asset:context this.Speed[5]
    execute if data storage asset:context {Stack:7} run data modify storage api: Argument.FieldOverride.Speed set from storage asset:context this.Speed[6]

# ダメージ設定
    execute if data storage asset:context {Stack:1} run data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage[0]
    execute if data storage asset:context {Stack:2} run data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage[1]
    execute if data storage asset:context {Stack:3} run data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage[2]
    execute if data storage asset:context {Stack:4} run data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage[3]
    execute if data storage asset:context {Stack:5} run data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage[4]
    execute if data storage asset:context {Stack:6} run data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage[5]
    execute if data storage asset:context {Stack:7} run data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage[6]

# 召喚
    data modify storage api: Argument.ID set value 1159
    data modify storage api: Argument.FieldOverride.Range set from storage asset:context this.Range
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    function api:object/summon

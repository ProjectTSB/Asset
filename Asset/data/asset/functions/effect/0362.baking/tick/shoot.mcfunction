#> asset:effect/0362.baking/tick/shoot
#
#
#
# @within function asset:effect/0362.baking/tick/

# スタックに応じて弾速を調整
    execute if data storage asset:context {Stack:1} run data modify storage api: Argument.FieldOverride.Speed set value 1
    execute if data storage asset:context {Stack:2} run data modify storage api: Argument.FieldOverride.Speed set value 2
    execute if data storage asset:context {Stack:3} run data modify storage api: Argument.FieldOverride.Speed set value 3

# ダメージ設定
    execute if data storage asset:context {Stack:1} run data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.Charge1
    execute if data storage asset:context {Stack:2} run data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.Charge2
    execute if data storage asset:context {Stack:3} run data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.Charge3

# 召喚
    data modify storage api: Argument.ID set value 1159
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    function api:object/summon

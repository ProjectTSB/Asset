#> asset:artifact/0248.bow_of_vinderre/shot/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/248/shot/

# 最大の引き絞りかを取得する
    data modify storage asset:temp Crit set from entity @e[type=#arrows,tag=ShotArrow,distance=..5,limit=1] crit

# 矢を召喚する
    data modify storage api: Argument.ID set value 1070
    execute if data storage asset:temp {Crit: true} run data modify storage api: Argument.FieldOverride.Damage set value 20
    execute if data storage asset:temp {Crit:false} run data modify storage api: Argument.FieldOverride.Damage set value 10
    execute if data storage asset:temp {Crit: true} run data modify storage api: Argument.FieldOverride.Speed set value 8
    execute if data storage asset:temp {Crit:false} run data modify storage api: Argument.FieldOverride.Speed set value 3
    data modify storage api: Argument.FieldOverride.Enhanced set from storage asset:temp Crit
    data modify storage api: Argument.FieldOverride.AdditionalMPHeal set from storage api: PersistentArgument.AdditionalMPHeal
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    execute anchored eyes positioned ^ ^ ^ run function api:object/summon

# キル
    kill @e[type=#arrows,tag=ShotArrow,distance=..5]
# リセット
    data remove storage asset:temp Crit

#> asset:artifact/0248.bow_of_vinderre/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0248.bow_of_vinderre/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 最大の引き絞りかを取得する
    data modify storage asset:temp Crit set from entity @e[type=#arrows,tag=ShotArrow,distance=..5,limit=1] crit

# 矢を召喚する
    data modify storage api: Argument.ID set value 1070
    execute if data storage asset:temp {Crit: true} run data modify storage api: Argument.FieldOverride.Damage set value 30
    execute if data storage asset:temp {Crit:false} run data modify storage api: Argument.FieldOverride.Damage set value 10
    execute if data storage asset:temp {Crit: true} run data modify storage api: Argument.FieldOverride.StepPerTick set value 8
    execute if data storage asset:temp {Crit:false} run data modify storage api: Argument.FieldOverride.StepPerTick set value 3
    data modify storage api: Argument.FieldOverride.Enhanced set from storage asset:temp Crit
    data modify storage api: Argument.FieldOverride.AdditionalMPHeal set from storage api: PersistentArgument.AdditionalMPHeal
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    execute anchored eyes positioned ^ ^ ^ run function api:object/summon

# キル
    kill @e[type=#arrows,tag=ShotArrow,distance=..5]
# リセット
    data remove storage asset:temp Crit

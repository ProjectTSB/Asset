#> asset:object/2206.eclael_thunder/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2206/init

# 攻撃位置表示
    data modify storage api: Argument.ID set value 2063
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.Color set value 54783
    execute if predicate api:global_vars/difficulty/max/normal run data modify storage api: Argument.FieldOverride.Scale set value [7f, 7f, 0.05f]
    execute if predicate api:global_vars/difficulty/min/3_blessless run data modify storage api: Argument.FieldOverride.Scale set value [10f, 10f, 0.05f]
    data modify storage api: Argument.FieldOverride.Tick set value 30
    execute positioned ~ ~-0.5 ~ run function api:object/summon

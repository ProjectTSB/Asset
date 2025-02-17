#> asset:object/2206.eclael_thunder/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2206/init

# 攻撃位置表示
    data modify storage api: Argument.ID set value 2063
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.Color set value 16761175
    data modify storage api: Argument.FieldOverride.Scale set value [5f, 5f, 0.05f]
    data modify storage api: Argument.FieldOverride.Tick set value 30
    execute positioned ~ ~-0.5 ~ run function api:object/summon

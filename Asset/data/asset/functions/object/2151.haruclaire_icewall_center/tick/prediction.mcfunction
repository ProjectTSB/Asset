#> asset:object/2151.haruclaire_icewall_center/tick/prediction
#
# Objectのtick時の処理
#
# @within asset:object/2151.haruclaire_icewall_center/tick/

# 攻撃位置表示
    data modify storage api: Argument.ID set value 2063
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.Color set value 54783
    data modify storage api: Argument.FieldOverride.Scale set value [6f, 6f, 0.05f]
    data modify storage api: Argument.FieldOverride.Tick set value 40
    execute positioned ~ ~0.4 ~ run function api:object/summon

#> asset:object/2211.eclael_circle_slash/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2211/init

# 角度をランダムに設定
    execute store result entity @s Rotation[0] float 1 run random value -180..180

# 予告
    data modify storage api: Argument.ID set value 2063
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.Color set value 54783
    data modify storage api: Argument.FieldOverride.Scale set value [12f, 12f, 0.05f]
    data modify storage api: Argument.FieldOverride.Tick set value 22
    execute positioned ~ ~ ~ run function api:object/summon

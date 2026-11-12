#> asset:effect/0434.overhauled_toaster_shooting/tick/shoot.m
#
# チャージ段階の弾速と威力でパンを射出する
#
# @input args:
#   Index: int (0..6)
# @within function asset:effect/0434.overhauled_toaster_shooting/tick/

# チャージ段階の弾速とダメージを取得する
    $data modify storage api: Argument.FieldOverride.Speed set from storage asset:context this.Speed[$(Index)]
    $data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage[$(Index)]

# 召喚
    data modify storage api: Argument.ID set value 1159
    data modify storage api: Argument.FieldOverride.Range set from storage asset:context this.Range
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    function api:object/summon

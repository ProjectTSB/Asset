#> asset:object/2126.heiloang_thunder_burst/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2126/init

# 攻撃位置表示
    data modify storage api: Argument.ID set value 2063
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.Color set value 16761175
    data modify storage api: Argument.FieldOverride.Scale set value [8f, 8f, 0.05f]
    data modify storage api: Argument.FieldOverride.Tick set value 50
    execute positioned ~ ~0.5 ~ run function api:object/summon

# NBT設定
    data modify entity @s teleport_duration set value 3

#> asset:object/2185.heiloang_storm_burst/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2185/init

# 攻撃位置表示
    data modify storage api: Argument.ID set value 2063
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.Color set value 6607955
    data modify storage api: Argument.FieldOverride.Scale set value [13f, 13f, 0.05f]
    data modify storage api: Argument.FieldOverride.Tick set value 60
    execute positioned ~ ~0.5 ~ run function api:object/summon

# 移動
    tp @s ~ ~30 ~

# NBT設定
    data modify entity @s teleport_duration set value 3

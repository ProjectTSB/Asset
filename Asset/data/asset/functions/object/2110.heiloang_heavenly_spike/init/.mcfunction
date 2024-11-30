#> asset:object/2110.heiloang_heavenly_spike/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2110/init

# 攻撃位置表示
    data modify storage api: Argument.ID set value 2063
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.Color set value 54783
    data modify storage api: Argument.FieldOverride.Scale set value [20f, 20f, 0.05f]
    data modify storage api: Argument.FieldOverride.Tick set value 95
    execute positioned ~ ~0.5 ~ run function api:object/summon

# 移動
    tp @s ~ ~20 ~

# NBT設定
    data modify entity @s teleport_duration set value 3

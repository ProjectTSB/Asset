#> asset:mob/0380.haruclaire_v3/tick/event/press/set_position
#
# 押しつぶし
#
# @within asset:mob/0380.haruclaire_v3/tick/event/press/

# 攻撃位置決定
    summon area_effect_cloud ^ ^ ^ {Tags:["AK.Temp.AttackPosition"],Duration:5}

# 地面に合わせる
    execute as @e[type=area_effect_cloud,tag=AK.Temp.AttackPosition,distance=..80] at @s run function asset:mob/0380.haruclaire_v3/tick/util/setup_to_floor
    execute as @e[type=area_effect_cloud,tag=AK.Temp.AttackPosition,distance=..80] positioned as @s run tp @s ~ ~0.6 ~ ~ 0

# 予告円表示
    data modify storage api: Argument.ID set value 2063
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.Color set value 54783
    data modify storage api: Argument.FieldOverride.Scale set value [10f, 10f, 0.05f]
    data modify storage api: Argument.FieldOverride.Tick set value 25
    execute positioned as @e[type=area_effect_cloud,tag=AK.Temp.AttackPosition,distance=..80] positioned ~ ~ ~ run function api:object/summon

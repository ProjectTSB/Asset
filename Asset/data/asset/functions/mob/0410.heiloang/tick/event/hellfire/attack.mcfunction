#> asset:mob/0410.heiloang/tick/event/hellfire/attack
#
# ヘルファイア
#
# @within asset:mob/0410.heiloang/tick/event/hellfire/

# 攻撃位置決定用
    execute positioned as @p[tag=BE.MainTarget] run summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["BE.Temp.AttackPosition"]}
    execute as @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,limit=1] at @s run function asset:mob/0410.heiloang/tick/util/move_to_ground
    summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["BE.Temp.AttackRotation"]}
    execute as @e[type=area_effect_cloud,tag=BE.Temp.AttackRotation,limit=1] at @s facing entity @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,limit=1] feet run tp @s ~ ~ ~ ~ ~

# 攻撃
    data modify storage api: Argument.ID set value 2107
    data modify storage api: Argument.FieldOverride.Rotation set from entity @e[type=area_effect_cloud,tag=BE.Temp.AttackRotation,limit=1] Rotation
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    function api:object/summon

# 攻撃位置表示
    data modify storage api: Argument.ID set value 2063
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.Color set value 10684938
    data modify storage api: Argument.FieldOverride.Scale set value [11f, 11f, 0.05f]
    data modify storage api: Argument.FieldOverride.Tick set value 10
    execute as @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,limit=1] at @s positioned ~ ~0.5 ~ run function api:object/summon

# 演出
    playsound item.firecharge.use hostile @a ~ ~ ~ 3 0.7
    particle explosion ~ ~ ~ 0 0 0 0 1 force
    execute rotated as @e[type=area_effect_cloud,tag=BE.Temp.AttackRotation,limit=1] run function asset:mob/0410.heiloang/tick/event/hellfire/particle_shoot

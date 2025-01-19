#> asset:mob/0410.heiloang/tick/event/power_breath/summon_attack_pos_first
#
# パワーブレス
#
# @within asset:mob/0410.heiloang/tick/event/power_breath/

# 攻撃位置決定
    summon area_effect_cloud ~ ~ ~ {Duration:31,Tags:["BE.Temp.AttackPosition"]}
    execute as @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,sort=nearest,limit=1] at @s run function asset:mob/0410.heiloang/tick/util/move_to_ground

# 攻撃位置表示
    data modify storage api: Argument.ID set value 2063
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.Color set value 16761175
    data modify storage api: Argument.FieldOverride.Scale set value [11f, 11f, 0.05f]
    data modify storage api: Argument.FieldOverride.Tick set value 30
    execute as @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,limit=1] at @s positioned ~ ~0.5 ~ run function api:object/summon

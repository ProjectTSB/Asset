#> asset:mob/0410.heiloang/tick/event/power_breath/summon_attack_pos
#
# パワーブレス
#
# @within asset:mob/0410.heiloang/tick/event/power_breath/
# @within asset:mob/0410.heiloang/tick/event/power_breath_continue_1/
# @within asset:mob/0410.heiloang/tick/event/power_breath_continue_2/
# @within asset:mob/0410.heiloang/tick/event/power_breath_end/

# 攻撃位置決定
    summon area_effect_cloud ~ ~ ~ {Duration:21,Tags:["BE.Temp.AttackPosition"]}
    execute as @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,sort=nearest,limit=1] at @s run function asset:mob/0410.heiloang/tick/util/move_to_ground

# 攻撃位置表示：円
    data modify storage api: Argument.ID set value 2063
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.Color set value 16761175
    data modify storage api: Argument.FieldOverride.Scale set value [11f, 11f, 0.05f]
    data modify storage api: Argument.FieldOverride.Tick set value 20
    execute as @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,limit=1] at @s positioned ~ ~0.5 ~ run function api:object/summon

# 攻撃位置表示：線
    # ハードでは角度変更
        execute store result score $Interval Temporary run scoreboard players get @s BE.Pb.Count
        scoreboard players operation $Interval Temporary %= $2 Const
        execute as @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,limit=1] at @s positioned ~ ~0.5 ~ if predicate api:global_vars/difficulty/max/2_hard run function asset:mob/0410.heiloang/tick/event/power_breath/prediction_line.m {Offset:0}
        execute as @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,limit=1] at @s positioned ~ ~0.5 ~ if predicate api:global_vars/difficulty/min/3_blessless if score $Interval Temporary matches 0 run function asset:mob/0410.heiloang/tick/event/power_breath/prediction_line.m {Offset:22.5}
        execute as @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,limit=1] at @s positioned ~ ~0.5 ~ if predicate api:global_vars/difficulty/min/3_blessless if score $Interval Temporary matches 1 run function asset:mob/0410.heiloang/tick/event/power_breath/prediction_line.m {Offset:0}
        scoreboard players reset $Interval Temporary

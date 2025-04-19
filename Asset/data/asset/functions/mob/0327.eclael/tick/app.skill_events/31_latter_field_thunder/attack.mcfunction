#> asset:mob/0327.eclael/tick/app.skill_events/31_latter_field_thunder/attack
#
# アニメーションのイベントハンドラ
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/31_latter_field_thunder/attack_check

# 攻撃位置決定
    summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["93.Temp.AttackPosition"]}
    execute as @e[type=area_effect_cloud,tag=93.Temp.AttackPosition,distance=..80,sort=nearest,limit=1] at @s run function asset:mob/0327.eclael/tick/app.general/move_to_ground

# 攻撃
    data modify storage api: Argument.ID set value 2206
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.FieldThunder
    execute at @e[type=area_effect_cloud,tag=93.Temp.AttackPosition,distance=..80,sort=nearest,limit=1] positioned ~ ~1 ~ run function api:object/summon

# 終了
    kill @e[type=area_effect_cloud,tag=93.Temp.AttackPosition,distance=..80]

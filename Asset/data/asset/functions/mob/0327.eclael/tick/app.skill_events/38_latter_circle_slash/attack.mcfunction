#> asset:mob/0327.eclael/tick/app.skill_events/38_latter_circle_slash/attack
#
# アニメーションのイベントハンドラ
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/38_latter_circle_slash/main

# 攻撃位置決定
    summon area_effect_cloud ^ ^ ^ {Duration:1,Tags:["93.Temp.AttackPosition"]}
    # 偏差
        execute if predicate api:global_vars/difficulty/min/3_blessless run function asset:mob/0327.eclael/tick/app.skill_events/38_latter_circle_slash/attack_predict
# 地上に合わせる
    execute as @e[type=area_effect_cloud,tag=93.Temp.AttackPosition,distance=..80,sort=nearest,limit=1] at @s run function asset:mob/0327.eclael/tick/app.general/move_to_ground

# 攻撃
    data modify storage api: Argument.ID set value 2211
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @e[type=wither_skeleton,tag=93.EntityRoot,distance=..80,limit=1] MobUUID
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.Circle
    execute at @e[type=area_effect_cloud,tag=93.Temp.AttackPosition,distance=..80,sort=nearest,limit=1] positioned ~ ~0.4 ~ run function api:object/summon

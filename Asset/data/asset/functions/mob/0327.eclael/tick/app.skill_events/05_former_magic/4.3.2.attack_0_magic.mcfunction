#> asset:mob/0327.eclael/tick/app.skill_events/05_former_magic/4.3.2.attack_0_magic
#
# アニメーションのイベントハンドラ 前半・射撃 発射
#
# @within
#   function asset:mob/0327.eclael/tick/app.skill_events/05_former_magic/4.3.1.attack_0
#   function asset:mob/0327.eclael/debug_damage

# 攻撃位置決定
    summon area_effect_cloud ^ ^3 ^ {Duration:1,Tags:["93.Temp.AttackPosition"]}
    execute as @e[type=area_effect_cloud,tag=93.Temp.AttackPosition,sort=nearest,limit=1] at @s run function asset:mob/0327.eclael/tick/app.general/move_to_ground

# 攻撃
    data modify storage api: Argument.ID set value 2206
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.Damage set value 45.0f
    execute positioned as @e[type=area_effect_cloud,tag=93.Temp.AttackPosition,sort=nearest,limit=1] positioned ~ ~1 ~ run function api:object/summon
    kill @e[type=area_effect_cloud,tag=93.Temp.AttackPosition,sort=nearest,limit=1]

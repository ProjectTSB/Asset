#> asset:mob/0327.eclael/tick/app.skill_events/37_latter_tensei/attack_2_shot
#
# アニメーションのイベントハンドラ
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/37_latter_tensei/attack_2

# 基準
    summon area_effect_cloud ^ ^ ^ {Duration:1,Tags:["93.Temp.AttackRotation"]}

# ライン斬撃Root
    execute as @e[type=area_effect_cloud,tag=93.Temp.AttackRotation,distance=..80] run tp @s ~ ~ ~ ~15 0
    data modify storage api: Argument.ID set value 2210
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.Tensei
    data modify storage api: Argument.FieldOverride.Rotation set from entity @e[type=area_effect_cloud,tag=93.Temp.AttackRotation,distance=..80,limit=1] Rotation[0]
    execute positioned ^ ^0.1 ^ run function api:object/summon
    data modify storage api: Argument.ID set value 2210
    execute as @e[type=area_effect_cloud,tag=93.Temp.AttackRotation] run tp @s ~ ~ ~ ~-15 0
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.Tensei
    data modify storage api: Argument.FieldOverride.Rotation set from entity @e[type=area_effect_cloud,tag=93.Temp.AttackRotation,distance=..80,limit=1] Rotation[0]
    execute positioned ^ ^0.1 ^ run function api:object/summon

# 終了
    kill @e[type=area_effect_cloud,tag=93.Temp.AttackRotation,distance=..80]

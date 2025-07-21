#> asset:mob/0327.eclael/tick/app.skill_events/35_latter_beam/attack_line_slash.m
#
# アニメーションのイベントハンドラ
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/35_latter_beam/**

# ライン斬撃
    summon area_effect_cloud ^ ^ ^ {Duration:1,Tags:["93.Temp.AttackRotation"]}
    $execute as @e[type=area_effect_cloud,tag=93.Temp.AttackRotation,distance=..80] run tp @s ~ ~ ~ ~$(Rotation) 0
    data modify storage api: Argument.ID set value 2207
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    $data modify storage api: Argument.FieldOverride.IsGreen set value $(IsGreen)
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.BeamSlash
    data modify storage api: Argument.FieldOverride.Rotation set from entity @e[type=area_effect_cloud,tag=93.Temp.AttackRotation,distance=..80,limit=1] Rotation[0]
    $execute positioned ^$(PosX) ^$(PosY) ^$(PosZ) run function api:object/summon
    kill @e[type=area_effect_cloud,tag=93.Temp.AttackRotation,distance=..80]

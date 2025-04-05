#> asset:object/2209.eclael_field_slash/tick/attack_green
#
# Objectのtick時の処理
#
# @within asset:object/2209.eclael_field_slash/tick/

# ライン斬撃
    summon area_effect_cloud ^ ^ ^ {Duration:1,Tags:["2209.Rotation"]}
    execute as @e[type=area_effect_cloud,tag=2209.Rotation] run tp @s ~ ~ ~ ~0 0
    data modify storage api: Argument.ID set value 2207
    data modify storage api: Argument.FieldOverride.MobUUID set from storage asset:context this.MobUUID
    data modify storage api: Argument.FieldOverride.IsGreen set value true
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.FieldOverride.Rotation set from entity @e[type=area_effect_cloud,tag=2209.Rotation,limit=1] Rotation[0]
    execute positioned ^ ^ ^ run function api:object/summon

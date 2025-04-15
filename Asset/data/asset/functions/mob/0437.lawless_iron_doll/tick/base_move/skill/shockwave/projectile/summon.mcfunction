#> asset:mob/0437.lawless_iron_doll/tick/base_move/skill/shockwave/projectile/summon
#
#
#
# @within function
#   asset:mob/0437.lawless_iron_doll/tick/base_move/skill/shockwave/projectile/3
#   asset:mob/0437.lawless_iron_doll/tick/base_move/skill/shockwave/projectile/5

# オブジェクト2241番をデータ指定した上で召喚する
    data modify storage api: Argument.ID set value 2245
    execute store result storage api: Argument.FieldOverride.Damage int 1 run data get storage asset:context this.Damage.ShockWave
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.transformation set value {left_rotation:[-0.455f,-0.455f,-0.542f,0.542f]}
    function api:object/summon

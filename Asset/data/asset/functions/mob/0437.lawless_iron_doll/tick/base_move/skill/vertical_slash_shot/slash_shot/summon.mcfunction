#> asset:mob/0437.lawless_iron_doll/tick/base_move/skill/vertical_slash_shot/slash_shot/summon
#
# 召喚処理
#
# @within function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/vertical_slash_shot/slash/**

# オブジェクト2244番をデータ指定した上で召喚する
    data modify storage api: Argument.ID set value 2244
    data modify storage api: Argument.FieldOverride.Range set value 70
    data modify storage api: Argument.FieldOverride.Speed set value 3
    execute store result storage api: Argument.FieldOverride.Damage int 1 run data get storage asset:context this.Damage.SlashShot1
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    function api:object/summon

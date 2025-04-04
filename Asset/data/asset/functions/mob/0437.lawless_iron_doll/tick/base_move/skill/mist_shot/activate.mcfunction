#> asset:mob/0437.lawless_iron_doll/tick/base_move/skill/mist_shot/activate
#
#
#
# @within function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/mist_shot/tick

# オブジェクト2243番をデータ指定した上で召喚する
    data modify storage api: Argument.ID set value 2243
    execute store result storage api: Argument.FieldOverride.Damage int 1 run data get storage asset:context this.Damage.MistShot
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    execute positioned ~ ~1.5 ~ positioned ^ ^ ^2 run function api:object/summon

# 演出
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 2 0.5
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 2 0.6
    playsound minecraft:item.axe.scrape hostile @a ~ ~ ~ 1 1.5

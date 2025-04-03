#> asset:mob/0437.lawless_iron_doll/tick/base_move/skill/horizontal_slash_shot/activate
#
# 技を発動、弾が飛んでいく！
#
# @within function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/horizontal_slash_shot/tick

# オブジェクト召喚
    execute rotated ~ 0 positioned ~ ~1.5 ~ positioned ^ ^ ^2 run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/horizontal_slash_shot/slash_shot/summon
    execute rotated ~45 0 positioned ~ ~1.5 ~ positioned ^ ^ ^2 run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/horizontal_slash_shot/slash_shot/summon
    execute rotated ~-45 0 positioned ~ ~1.5 ~ positioned ^ ^ ^2 run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/horizontal_slash_shot/slash_shot/summon
    execute rotated ~22.5 0 positioned ~ ~1.5 ~ positioned ^ ^ ^2 run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/horizontal_slash_shot/slash_shot/summon
    execute rotated ~-22.5 0 positioned ~ ~1.5 ~ positioned ^ ^ ^2 run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/horizontal_slash_shot/slash_shot/summon

# 斬撃の演出も召喚する
    data modify storage api: Argument.ID set value 2001
    data modify storage api: Argument.FieldOverride set value {Color:12899545,Frames:[20335,20335,20336,20337],Scale:[7f,7f,0.1f],Transformation:{left_rotation:[0.561f,-0.43f,0.43f,0.561f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}
    execute anchored eyes rotated ~ 0 positioned ^ ^ ^2 positioned ~ ~-0.5 ~ rotated ~-45 5 run function api:object/summon

# 演出
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 2 0.5
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 2 0.6
    playsound minecraft:item.axe.scrape hostile @a ~ ~ ~ 1 1.5

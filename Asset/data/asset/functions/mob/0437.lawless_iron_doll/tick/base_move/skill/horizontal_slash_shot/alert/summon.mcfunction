#> asset:mob/0437.lawless_iron_doll/tick/base_move/skill/horizontal_slash_shot/alert/summon
#
#
#
# @within function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/horizontal_slash_shot/alert/start

# データ設定
    data modify storage api: Argument.FieldOverride set value {Color:5436415,Interpolation:5,Tick:10,Scale:[5f,30.0f]}

# そのまま召喚すると地面に重なっちゃうので、ちょっと上げて召喚
    data modify storage api: Argument.ID set value 2113
    execute positioned ~ ~0.1 ~ run function api:object/summon

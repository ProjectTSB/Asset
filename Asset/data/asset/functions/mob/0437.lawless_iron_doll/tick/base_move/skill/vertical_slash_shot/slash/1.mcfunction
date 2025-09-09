#> asset:mob/0437.lawless_iron_doll/tick/base_move/skill/vertical_slash_shot/slash/1
#
#
#
# @within function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/vertical_slash_shot/tick

# 扇形判定を出す。
    # 判定その1、狭いが高い。
        data modify storage lib: Argument.BoundingFan set value {Angle:180,Radius:4,Height:5,Selector:"@a[tag=!PlayerShouldInvulnerable,distance=..16]"}
    # 扇型の判定を出す
        execute positioned ~ ~-2.5 ~ run function lib:bounding_fan/
    # 判定その2、広いけど薄いので飛び越えれる
        data modify storage lib: Argument.BoundingFan set value {Angle:160,Radius:6,Height:2,Selector:"@a[tag=!PlayerShouldInvulnerable,distance=..16]"}
    # 扇型の判定を出す
        execute positioned ~ ~-1 ~ run function lib:bounding_fan/

# オブジェクト召喚
    data modify storage api: Argument.FieldOverride.transformation set value {left_rotation:[0.271f,-0.653f,0.271f,0.653f]}
    execute rotated ~ ~ positioned ~ ~1.5 ~ positioned ^ ^ ^2 run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/vertical_slash_shot/slash_shot/summon

# 斬撃の演出も召喚する
    data modify storage api: Argument.ID set value 2001
    data modify storage api: Argument.FieldOverride set value {Color:12899545,Frames:[20335,20335,20336,20337],Scale:[8f,8f,0.1f],Transformation:{left_rotation:[0.561f,-0.43f,0.43f,0.561f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}
    execute anchored eyes rotated ~ 0 positioned ^ ^ ^3 positioned ~ ~-0.5 ~ rotated ~-45 5 run function api:object/summon

# 残りの共通処理やる
    function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/vertical_slash_shot/slash/common

#> asset:mob/0437.lawless_iron_doll/tick/base_move/skill/vertical_slash_shot/slash/2
#
#
#
# @within function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/vertical_slash_shot/tick

# 扇形判定を出す。
    # 判定その1、狭いが高い。
        data modify storage lib: Argument.BoundingFan set value {Angle:45,Radius:6,Height:5,Selector:"@a[tag=!PlayerShouldInvulnerable,distance=..16]"}
    # 扇型の判定を出す
        execute positioned ~ ~-3 ~ run function lib:bounding_fan/

# オブジェクト召喚
    data modify storage api: Argument.FieldOverride.transformation set value {left_rotation:[-0.683f,-0.183f,-0.683f,0.183f]}
    execute rotated ~ ~ positioned ~ ~1.5 ~ positioned ^ ^ ^2 run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/vertical_slash_shot/slash_shot/summon

# 斬撃の演出も召喚する
    data modify storage api: Argument.ID set value 2001
    data modify storage api: Argument.FieldOverride set value {Color:12899545,Frames:[20335,20335,20336,20337],Scale:[8f,8f,0.1f],Transformation:{left_rotation:[-0.683f,-0.183f,-0.683f,0.183f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}
    execute anchored eyes rotated ~ 0 positioned ^ ^ ^3 positioned ~ ~-0.5 ~ rotated ~ 0 run function api:object/summon

# 残りの共通処理やる
    function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/vertical_slash_shot/slash/common

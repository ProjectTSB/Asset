#> asset:mob/0059.jack_o_lantern/tick/skill/common/set_face_id
#
# 返り値としてCustomModelDataのIDを返す
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill/**

#> Private
# @private
    #declare score_holder $RandomFaceID

# $Randomだと呼び出し元と干渉してしまうので別の名前を用いる

# 疑似乱数取得
    execute store result score $RandomFaceID Temporary run random value 0..8

# ID選択
    execute if score $RandomFaceID Temporary matches 0 run data modify storage api: Argument.FieldOverride.FaceID set value 20201
    execute if score $RandomFaceID Temporary matches 1 run data modify storage api: Argument.FieldOverride.FaceID set value 20202
    execute if score $RandomFaceID Temporary matches 2 run data modify storage api: Argument.FieldOverride.FaceID set value 20203
    execute if score $RandomFaceID Temporary matches 3 run data modify storage api: Argument.FieldOverride.FaceID set value 20204
    execute if score $RandomFaceID Temporary matches 4 run data modify storage api: Argument.FieldOverride.FaceID set value 20205
    execute if score $RandomFaceID Temporary matches 5 run data modify storage api: Argument.FieldOverride.FaceID set value 20206
    execute if score $RandomFaceID Temporary matches 6 run data modify storage api: Argument.FieldOverride.FaceID set value 20282
    execute if score $RandomFaceID Temporary matches 7 run data modify storage api: Argument.FieldOverride.FaceID set value 20283
    execute if score $RandomFaceID Temporary matches 8 run data modify storage api: Argument.FieldOverride.FaceID set value 20284

# IDを返す
    scoreboard players reset $RandomFaceID Temporary

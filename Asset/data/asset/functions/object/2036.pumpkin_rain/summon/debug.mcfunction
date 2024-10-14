#> asset:object/2036.pumpkin_rain/summon/debug
#
# 動作チェック用の召喚処理 使い終わったら消してもいいかも
#
# @user
# @private

# フィールドを設定

# Rotation
    data modify storage api: Argument.FieldOverride.RotationX set from entity @s Rotation[0]
    execute unless data storage api: Argument.FieldOverride.RotationX run data modify storage api: Argument.FieldOverride.RotationX set value 0.0f

# FaceID
    execute unless data storage api: Argument.FieldOverride.FaceID run data modify storage api: Argument.FieldOverride.RotationX set value 1

# 召喚
    data modify storage api: Argument.ID set value 2036
    function api:object/summon

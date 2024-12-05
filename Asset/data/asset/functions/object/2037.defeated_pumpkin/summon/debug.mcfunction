#> asset:object/2037.defeated_pumpkin/summon/debug
#
# 動作チェック用の召喚処理 使い終わったら消してもいいかも
#
# @user
# @private

# フィールドを設定
    data modify storage api: Argument.FieldOverride.RotationX set from entity @s Rotation[0]
    execute unless data storage api: Argument.FieldOverride.RotationX run data modify storage api: Argument.FieldOverride.RotationX set value 0.0f

# 召喚
    data modify storage api: Argument.ID set value 2037
    function api:object/summon

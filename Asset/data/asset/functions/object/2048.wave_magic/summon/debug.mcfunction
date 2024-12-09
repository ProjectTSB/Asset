#> asset:object/2048.wave_magic/summon/debug
#
# 動作チェック用の召喚処理 使い終わったら消してもいいかも
#
# @user
# @private

# フィールドを設定
    data modify storage api: Argument.FieldOverride.Rotation set value [0.0f,45.0f]

# 召喚
    data modify storage api: Argument.ID set value 2048
    function api:object/summon

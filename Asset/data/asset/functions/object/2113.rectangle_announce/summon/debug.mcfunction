#> asset:object/2113.rectangle_announce/summon/debug
#
# 動作チェック用の召喚処理 使い終わったら消してもいいかも
#
# @user
# @private

# 見てる方向へRotationXを設定
    data modify storage api: Argument.FieldOverride.RotationX set from entity @s Rotation[0]

# 前方へ進まない設定
    # data modify storage api: Argument.FieldOverride.ToForward set value false

# 召喚
    data modify storage api: Argument.ID set value 2113
    function api:object/summon

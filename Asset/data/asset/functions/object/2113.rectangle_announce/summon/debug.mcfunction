#> asset:object/2113.rectangle_announce/summon/debug
#
# 動作チェック用の召喚処理 使い終わったら消してもいいかも
#
# @user
# @private

# Rotation
    data modify storage api: Argument.FieldOverride.RotationX set from entity @s Rotation[0]


# 召喚
    data modify storage api: Argument.ID set value 2113
    function api:object/summon

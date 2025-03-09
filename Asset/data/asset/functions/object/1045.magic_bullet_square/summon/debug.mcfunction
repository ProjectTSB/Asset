#> asset:object/1045.magic_bullet_square/summon/debug
#
# 動作チェック用の召喚処理 使い終わったら消してもいいかも
#
# @user
# @private

    data modify storage api: Argument.FieldOverride.LeftRotate set value false

# 召喚
    data modify storage api: Argument.ID set value 1045
    function api:object/summon

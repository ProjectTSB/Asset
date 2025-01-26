#> asset:object/1038.thelema_slash_entity/summon/debug
#
# 動作チェック用の召喚処理 使い終わったら消してもいいかも
#
# @user
# @private

# 召喚
    data modify storage api: Argument.FieldOverride set value 1
    data modify storage api: Argument.ID set value 1038
    function api:object/summon

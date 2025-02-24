#> asset:object/1039.thelema_persuit_entity/summon/debug
#
# 動作チェック用の召喚処理 使い終わったら消してもいいかも
#
# @user
# @private

    data modify storage api: Argument.FieldOverride.SwordCount set value 10

# 召喚
    data modify storage api: Argument.ID set value 1039
    function api:object/summon

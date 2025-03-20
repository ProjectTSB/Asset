#> asset:object/1103.light_ball/summon/debug
#
# 動作チェック用の召喚処理 使い終わったら消してもいいかも
#
# @user
# @private

# 召喚
    # data modify storage api: Argument.FieldOverride.Track set value false
    data modify storage api: Argument.FieldOverride.Duration set value 200
    data modify storage api: Argument.ID set value 1103
    function api:object/summon

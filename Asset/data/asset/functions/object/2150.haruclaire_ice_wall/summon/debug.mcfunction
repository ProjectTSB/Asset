#> asset:object/2150.haruclaire_ice_wall/summon/debug
#
# 動作チェック用の召喚処理 使い終わったら消してもいいかも
#
# @user
# @private

# 召喚
    data modify storage api: Argument.ID set value 2150
    function api:object/summon

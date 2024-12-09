#> asset:object/2081.shower_of_cherry_blossoms/summon/debug
#
# 動作チェック用の召喚処理 使い終わったら消してもいいかも
#
# @user
# @private

# 召喚
    data modify storage api: Argument.ID set value 2081
    function api:object/summon
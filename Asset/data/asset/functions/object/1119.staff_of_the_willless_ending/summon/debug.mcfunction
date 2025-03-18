#> asset:object/1119.staff_of_the_willless_ending/summon/debug
#
# 動作チェック用の召喚処理 使い終わったら消してもいいかも
#
# @user
# @private

# 召喚
    data modify storage api: Argument.ID set value 1119
    function api:object/summon

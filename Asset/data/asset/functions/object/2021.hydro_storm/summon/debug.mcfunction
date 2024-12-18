#> asset:object/2021.hydro_storm/summon/debug
#
# 動作チェック用の召喚処理 使い終わったら消してもいいかも
#
# @user
# @private

# 召喚
    data modify storage api: Argument.ID set value 2021
    function api:object/summon
    tell @a a

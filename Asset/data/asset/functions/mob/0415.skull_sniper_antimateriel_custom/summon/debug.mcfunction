#> asset:mob/0415.skull_sniper_antimateriel_custom/summon/debug
#
# 動作チェック用の召喚処理 使い終わったら消してもいいかも
#
# @user
# @private

# 召喚
    data modify storage api: Argument.ID set value 415
    function api:mob/summon

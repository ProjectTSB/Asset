#> asset:object/2122.heiloang_flame_vfx/summon/debug
#
# 動作チェック用の召喚処理 使い終わったら消してもいいかも
#
# @user
# @private

# 召喚
    data modify storage api: Argument.ID set value 2122
    function api:object/summon

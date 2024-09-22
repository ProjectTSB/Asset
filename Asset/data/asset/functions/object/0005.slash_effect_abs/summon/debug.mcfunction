#> asset:object/0005.slash_effect_abs/summon/debug
#
# 動作チェック用の召喚処理 使い終わったら消してもいいかも
#
# @within asset:object/0005.slash_effect_abs/summon/debug

# 召喚
    data modify storage api: Argument.ID set value 5
    function api:object/summon

#> asset:object/2058.return_thunder/summon/debug
#
# 動作チェック用の召喚処理 使い終わったら消してもいいかも
#
# @user
# @private

    #data modify storage api: Argument.FieldOverride.MovePerStep set value 0.5

# 召喚
    data modify storage api: Argument.ID set value 2058
    function api:object/summon

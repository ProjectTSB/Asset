#> asset:object/2202.circle_announce_follow/summon/debug
#
# 動作チェック用の召喚処理 使い終わったら消してもいいかも
#
# @user
# @private

# 召喚
    # データ設定
    data modify storage api: Argument.FieldOverride set value {Color:15453454,Tick:40,Scale:2}
    execute store result storage api: Argument.FieldOverride.PlayerID int 1 run scoreboard players get @p UserID
    data modify storage api: Argument.ID set value 2202
    function api:object/summon

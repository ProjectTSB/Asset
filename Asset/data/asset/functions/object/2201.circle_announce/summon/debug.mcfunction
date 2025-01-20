#> asset:object/2201.circle_announce/summon/debug
#
# 動作チェック用の召喚処理 使い終わったら消してもいいかも
#
# @user
# @private

# 召喚
    # データ設定
    data modify storage api: Argument.FieldOverride set value {Color:15453454,Tick:40,Scale:2}
    data modify storage api: Argument.ID set value 2201
    function api:object/summon

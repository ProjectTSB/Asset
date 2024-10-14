#> asset:object/2050.lastboss_light_pillar/summon/debug
#
# 動作チェック用の召喚処理 使い終わったら消してもいいかも
#
# @user
# @private

# 発射体のステータス設定
    data modify storage api: Argument.FieldOverride set value {Speed:2,Range:200,MovePerStep:0.5}

# 召喚
    data modify storage api: Argument.ID set value 2050
    function api:object/summon

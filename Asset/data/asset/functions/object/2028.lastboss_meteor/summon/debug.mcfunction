#> asset:object/2028.lastboss_meteor/summon/debug
#
# 動作チェック用の召喚処理 使い終わったら消してもいいかも
#
# @user
# @private

# 発射体のステータス設定
    data modify storage api: Argument.FieldOverride set value {StepPerTick:4,Range:100,MovePerStep:0.5}

# 召喚
    data modify storage api: Argument.ID set value 2028
    function api:object/summon

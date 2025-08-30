#> asset:object/2044.lastboss_ice_bullet/summon/debug
#
# 動作チェック用の召喚処理 使い終わったら消してもいいかも
#
# @user
# @private

# 発射体のステータス設定
    data modify storage api: Argument.FieldOverride set value {StepPerTick:2,Range:100,MovePerStep:0.5}

# 召喚
    data modify storage api: Argument.ID set value 2044
    function api:object/summon

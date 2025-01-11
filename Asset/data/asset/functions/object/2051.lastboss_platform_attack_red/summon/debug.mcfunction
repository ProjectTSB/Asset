#> asset:object/2051.lastboss_platform_attack_red/summon/debug
#
# 動作チェック用の召喚処理 使い終わったら消してもいいかも
#
# @user
# @private

# 召喚
    data modify storage api: Argument.ID set value 2051
    function api:object/summon

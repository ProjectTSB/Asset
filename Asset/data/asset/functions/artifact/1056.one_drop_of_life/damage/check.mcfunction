#> asset:artifact/1056.one_drop_of_life/damage/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/1056/damage/check

    function asset:artifact/common/check_condition/hotbar
# 他にアイテム等確認する場合はここに書く

#> Private
# @private
    #declare score_holder $HealthPer

# 最大体力と現在体力の100倍を取得
    function api:entity/player/get_health_per
    execute store result score $HealthPer Temporary run data get storage api: Return.HealthPer 100

# 数値が25以下ではないならCanUsedを削除
    execute unless score $HealthPer Temporary matches ..25 run tag @s remove CanUsed

# リセット
    scoreboard players reset $HealthPer Temporary

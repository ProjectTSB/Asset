#> asset:artifact/0233.reversal/click/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/233/click/check

#> Val
# @private
    #declare score_holder $6H.HealthPer

# 体力割合を取得
    function api:entity/player/get_health_per
    execute store result score $6H.HealthPer Temporary run data get storage api: Return.HealthPer 100

# 体力が30%以下か確認
    execute if score $6H.HealthPer Temporary matches 301.. run function asset:artifact/0233.reversal/click/error_message
    execute if score $6H.HealthPer Temporary matches 301.. run tag @s remove CanUsed
    scoreboard players reset $6H.HealthPer Temporary

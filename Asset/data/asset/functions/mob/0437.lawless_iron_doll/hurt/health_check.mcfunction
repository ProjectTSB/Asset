#> asset:mob/0437.lawless_iron_doll/hurt/health_check
#
#
#
# @within function asset:mob/0437.lawless_iron_doll/hurt/

#>ヘルス割合用のスコアホルダー
# @private
    #declare score_holder $HealthPercent

# HP割合を取得
    function api:mob/get_health_percent

# 代入する
    execute store result score $HealthPercent Temporary run data get storage api: Return.HealthPer 100

# HP50%以下だったら、その動作を発動。
    execute if score $HealthPercent Temporary matches ..50 run function asset:mob/0437.lawless_iron_doll/hurt/active_50per

# リセット
    scoreboard players reset $HealthPercent Temporary

#> asset:mob/0365.frestchika/hurt/health_check
#
# 第2形態ではやらない
#
# @within function asset:mob/0365.frestchika/hurt/

#>ヘルス割合用のスコアホルダー
# @private
    #declare score_holder $HealthPercent

# HP割合を取得
    function api:mob/get_health_percent

# 代入する
    execute store result score $HealthPercent Temporary run data get storage api: Return.HealthPer 100

# HP50%以下時
    execute if score $HealthPercent Temporary matches ..50 run function asset:mob/0365.frestchika/hurt/active_50per

# リセット
    scoreboard players reset $HealthPercent Temporary

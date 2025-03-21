#> asset:mob/0365.frestchika/hurt/
#
# Mobのダメージ時の処理
#
# @within function asset:mob/alias/365/hurt

#>ヘルス割合用のスコアホルダー
# @private
    #declare score_holder $HealthPercent

# HP割合を取得
    function api:mob/get_health_percent

# 代入する
    execute store result score $HealthPercent Temporary run data get storage api: Return.HealthPer 100

# HP50%以下時
    execute if entity @s[tag=!AC.Health.50Per] if score $HealthPercent Temporary matches ..50 run function asset:mob/0365.frestchika/hurt/active_50per

# リセット
    scoreboard players reset $HealthPercent Temporary

# Super!
    function asset:mob/super.hurt

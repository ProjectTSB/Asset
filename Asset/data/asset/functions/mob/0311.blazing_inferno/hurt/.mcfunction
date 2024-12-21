#> asset:mob/0311.blazing_inferno/hurt/
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/alias/311/hurt

#>ヘルス割合用のスコアホルダー
# @private
    #declare score_holder $HealthPercent

# サウンド
    playsound minecraft:entity.blaze.hurt hostile @a ~ ~ ~ 1.5 0.7
    playsound minecraft:block.basalt.break hostile @a ~ ~ ~ 1.5 0.6
    playsound minecraft:block.deepslate.break hostile @a ~ ~ ~ 1.5 0.5

# HP割合を取得
    function api:mob/get_health_percent

# 代入する
    execute store result score $HealthPercent Temporary run data get storage api: Return.HealthPer 100

# HP50%以下時
    execute if entity @s[tag=!8N.Health.50Per] if score $HealthPercent Temporary matches ..50 run function asset:mob/0311.blazing_inferno/hurt/active_50per

# リセット
    scoreboard players reset $HealthPercent Temporary

# Super!
    function asset:mob/super.hurt

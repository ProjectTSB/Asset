#> asset:artifact/1430.shield_of_fate/tick/2.check_condition
#
# 神器の発動条件のチェック
#
# @within function asset:artifact/1430.shield_of_fate/tick/1.trigger

# 現在体力割合を取得する
    function api:entity/player/get_health_per
    execute store result score $13Q.HealthPer Temporary run data get storage api: Return.HealthPer 1000

# 体力が30%以下
    execute if score $13Q.HealthPer Temporary matches ..300 run function asset:artifact/1430.shield_of_fate/tick/check_debuff
# 体力が30%以下でない
    execute unless score $13Q.HealthPer Temporary matches ..300 run function asset:artifact/1430.shield_of_fate/tick/check_buff

# リセット
    scoreboard players reset $13Q.HealthPer Temporary

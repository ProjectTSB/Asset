#> asset:artifact/1141.bell_of_courage/damage_entity/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/1141/damage_entity/check


#> Private
# @private
    #declare score_holder $HealthPer

# HP割合が60%以下でなければCanUsedを削除
    function api:entity/player/get_health_per
    execute store result score $HealthPer Temporary run data get storage api: Return.HealthPer 100
    execute unless score $HealthPer Temporary matches ..60 run tag @s remove CanUsed
    scoreboard players reset $HealthPer Temporary

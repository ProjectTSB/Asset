#> asset:artifact/1047.life_steal_emblem/trigger/2.check_condition/check_health_per
#
# 体力割合をチェックする
#
# @within function asset:artifact/1047.life_steal_emblem/trigger/2.check_condition

#> Val
# @private
    #declare score_holder $T3.HPPer

# 体力割合を取得
    function api:entity/player/get_health_per
    execute store result score $T3.HPPer Temporary run data get storage api: Return.HealthPer 1000

# 体力が25%以上か確認
    execute unless score $T3.HPPer Temporary matches 251.. run function asset:artifact/1047.life_steal_emblem/trigger/2.check_condition/error_message
    execute unless score $T3.HPPer Temporary matches 251.. run tag @s remove CanUsed
    scoreboard players reset $T3.HPPer Temporary

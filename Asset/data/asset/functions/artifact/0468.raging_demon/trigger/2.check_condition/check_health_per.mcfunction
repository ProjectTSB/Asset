#> asset:artifact/0468.raging_demon/trigger/2.check_condition/check_health_per
#
# 体力割合をチェックし、一定以下ならtagを付与
#
# @within function asset:artifact/0468.raging_demon/trigger/2.check_condition

#> private
# @private
    #declare score_holder $Per

# 自身の体力割合を取得
    function api:mob/get_health_percent
    execute store result score $Per Temporary run data get storage api: Return.HealthPer 100

# 一定以下ならtagを付与
    execute unless score $Per Temporary matches 6.. run tag @s add D0.Target

# リセット
    scoreboard players reset $Per Temporary

#> asset:mob/0059.jack_o_lantern/hurt/check_health_per
#
# 体力割合を取得
#
# @within function asset:mob/0059.jack_o_lantern/hurt/

#> Private
# @private
    #declare score_holder $Per

# 体力割合取得
    function api:mob/get_health_percent
    execute store result score $Per Temporary run data get storage api: Return.HealthPer 100

# 40%以下ならTagを付与
    execute if score $Per Temporary matches ..40 run tag @s add 1N.HealthLess40Per

# リセット
    scoreboard players reset $Per Temporary

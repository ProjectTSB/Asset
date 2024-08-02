#> asset:mob/0104.mad_scientist/hurt/4.health_check
#
# 体力をチェックする
#
# @within function asset:mob/0104.mad_scientist/hurt/2.hurt

#> Private
# @private
    #declare score_holder $HealthPer

# 体力割合チェック
    function api:mob/get_health_percent
    execute store result score $HealthPer Temporary run data get storage api: Return.HealthPer 100
    execute if score $HealthPer Temporary matches ..50 run tag @s add 2W.HPless50Per
    scoreboard players reset $HealthPer Temporary

#> asset:mob/1004.tultaria/hurt/check_health
#
#
#
# @within function asset:mob/1004.tultaria/hurt/

#> private
# @private
    #declare score_holder $Health

# 現在体力を割合で出す
    function api:mob/get_health_percent

# ストレージをスコアに
    execute store result score $Health Temporary run data get storage api: Return.HealthPer 100
    #tellraw @a [{"text":"score: "},{"score":{"objective":"Temporary","name":"$Health"}}]

# 75%以下
    execute if score @s RW.Phase matches 1 if score $Health Temporary matches ..75 run function asset:mob/1004.tultaria/hurt/health_under_75
# HP50%以下
    execute if score @s RW.Phase matches 2 if score $Health Temporary matches ..50 run function asset:mob/1004.tultaria/hurt/health_under_50

# リセット
    scoreboard players reset $Health

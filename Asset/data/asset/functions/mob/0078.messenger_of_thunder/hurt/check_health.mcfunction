#> asset:mob/0078.messenger_of_thunder/hurt/check_health
#
# 現在の体力割合をチェックする
#
# @within function asset:mob/0078.messenger_of_thunder/hurt/

#> Private
# @private
    #declare score_holder $HealthPer

# 体力が半分以下かどうかを検知する
    function api:mob/get_health_percent
# 代入する
    execute store result score $HealthPer Temporary run data get storage api: Return.HealthPer 100

# 体力半分以下を検知
    execute if score $HealthPer Temporary matches ..50 run data modify entity @s HandItems[0].tag.Enchantments set value [{id:"punch",lvl:3s}]
    execute if score $HealthPer Temporary matches ..50 run tag @s add 26.HPLess50Per
    scoreboard players reset $HealthPer Temporary

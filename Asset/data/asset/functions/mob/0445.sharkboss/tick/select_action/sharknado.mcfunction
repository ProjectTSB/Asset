#> asset:mob/0445.sharkboss/tick/select_action/sharknado
#
# 
#
# @within function asset:mob/0445.sharkboss/tick/select_action/

#行動の予約
    tag @s add CD.Reserving
    tag @s add CD.Action.Sharknado1
    tag @s add CD.Charging
    scoreboard players set @s CD.ElectrifiedActionCounter 0
    scoreboard players set @s CD.Timer 0

#目標体力の設定
    function api:mob/get_health_percent
    execute store result score $HealthPer Temporary run data get storage api: Return.HealthPer 100
        #定数これでいい？
        scoreboard players set @s CD.DpsCheckThreshold 10
    scoreboard players operation $HealthPer Temporary -= @s CD.DpsCheckThreshold
    execute store result score @s CD.DpsCheckThreshold run scoreboard players get $HealthPer Temporary


#チャット
    say サメが電気を溜めている！

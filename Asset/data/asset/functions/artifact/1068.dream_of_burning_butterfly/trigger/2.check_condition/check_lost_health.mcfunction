#> asset:artifact/1068.dream_of_burning_butterfly/trigger/2.check_condition/check_lost_health
#
# 体力を一定値以上失っているかチェックする
#
# @within function asset:artifact/1068.dream_of_burning_butterfly/trigger/2.check_condition

# 体力割合を取得
    function api:entity/player/get_health_per
    execute store result score $HealthPer Temporary run data get storage api: Return.HealthPer 100

# 失った体力割合取得
    scoreboard players set $LostHealthPer Temporary 100
    scoreboard players operation $LostHealthPer Temporary -= $HealthPer Temporary

# 失った体力がX%以上でないなら使用できない
    execute if score $LostHealthPer Temporary matches ..9 run tag @s remove CanUsed

# リセットは2.check_conditionで行う

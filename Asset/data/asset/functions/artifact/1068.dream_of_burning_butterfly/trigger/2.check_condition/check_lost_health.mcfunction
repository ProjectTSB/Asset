#> asset:artifact/1068.dream_of_burning_butterfly/trigger/2.check_condition/check_lost_health
#
# 体力を一定値以上失っているかチェックする
#
# @within function asset:artifact/1068.dream_of_burning_butterfly/trigger/2.check_condition

# 最大体力と現在体力を取得
    function api:modifier/max_health/get
    execute store result score $MaxHealth Temporary run data get storage api: Return.MaxHealth
    function api:data_get/health
    execute store result score $Health Temporary run data get storage api: Health

# (最大体力 - 現在体力) >= 10 か否かをチェックする
    execute store result score $LostHealth Temporary run scoreboard players operation $MaxHealth Temporary -= $Health Temporary
    execute unless score $LostHealth Temporary matches 10.. run tag @s remove CanUsed

# リセットは2.check_conditionで行う

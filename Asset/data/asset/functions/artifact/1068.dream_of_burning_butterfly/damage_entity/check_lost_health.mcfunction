#> asset:artifact/1068.dream_of_burning_butterfly/damage_entity/check/check_lost_health
#
# 体力を一定値以上失っているかチェックする
#
# @within function asset:artifact/1068.dream_of_burning_butterfly/damage_entity/check

# 最大体力と現在体力を取得
    function api:modifier/max_health/get
    execute store result score $MaxHealth Temporary run data get storage api: Return.MaxHealth 10
    function api:data_get/health
    execute store result score $Health Temporary run data get storage api: Health 10

# (最大体力 - 現在体力) >= 10 か否かをチェックする
    #tellraw @a [{"text":"Return.MaxHealth: "},{"storage":"api:","nbt":"Return.MaxHealth"}]
    #tellraw @a [{"text":"Health: "},{"storage":"api:","nbt":"Health"}]
    execute store result score $LostHealth Temporary run scoreboard players operation $MaxHealth Temporary -= $Health Temporary
    #tellraw @a [{"text":"$LostHealth: "},{"score":{"objective":"Temporary","name":"$LostHealth"}}]
    execute unless score $LostHealth Temporary matches 100.. run return fail

return 1

# リセットはcheckで行う

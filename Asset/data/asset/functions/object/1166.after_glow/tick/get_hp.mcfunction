#> asset:object/1166.after_glow/tick/get_hp
#
# HPをスコアに入れる
#
# @within asset:object/1166.after_glow/tick/find_highest_hp_enemy

# temporaryにhpを
    function api:data_get/health
    execute store result score @s Temporary run data get storage api: Health 1.0

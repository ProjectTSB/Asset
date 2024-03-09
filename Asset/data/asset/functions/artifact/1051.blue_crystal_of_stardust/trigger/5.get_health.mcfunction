#> asset:artifact/1051.blue_crystal_of_stardust/trigger/5.get_health
#
# 実行者の現在体力をスコアへ代入する
#
# @within function asset:artifact/1051.blue_crystal_of_stardust/trigger/4.find_lowest_health_player

# 現在体力を取得
    function api:data_get/health

# 代入
    execute store result score @s Temporary run data get storage api: Health
#> asset:artifact/1075.fairy_vial/trigger/5.get_lost_health
#
# 実行者の現在体力を返す
#
# @within function asset:artifact/1075.fairy_vial/trigger/4.find_target_player

#> Private
# @private

# 現在体力を取得
    function api:data_get/health
    execute store result score $CurrentHealth Temporary run data get storage api: Health 10

# 最大体力を取得
    function api:modifier/max_health/get
    execute store result score $MaxHealth Temporary run data get storage api: Return.MaxHealth 10

# 失った体力の10倍を返り値として返す
    return run scoreboard players operation $MaxHealth Temporary -= $CurrentHealth Temporary

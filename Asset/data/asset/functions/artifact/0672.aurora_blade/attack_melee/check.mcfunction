#> asset:artifact/0672.aurora_blade/attack_melee/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/672/attack_melee/check

# 現在MPの100倍と最大MPを取得
    function api:mp/get_current
    execute store result score $MP Temporary run data get storage api: Return.CurrentMP 100
    function api:mp/get_max
    execute store result score $MPMax Temporary run data get storage api: Return.MaxMP

# 現在のMP割合を算出
    execute store result score $MPPer Temporary run scoreboard players operation $MP Temporary /= $MPMax Temporary

#> asset:effect/0258.spirit_melody/tick/heal
#
# 回復する
#
# @within function asset:effect/0258.spirit_melody/tick/

# 使用者の最大体力比例で回復させる
# 20回回復する
# 1回1.25%、合計25%
    function api:modifier/max_health/get
    execute store result storage api: Argument.Heal double 0.0125 run data get storage api: Return.MaxHealth
    function api:heal/modifier
    execute as @a[distance=..8] run function api:heal/
    function api:heal/reset

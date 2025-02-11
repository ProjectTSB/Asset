#> asset:artifact/0145.aure_nectar/use_item/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/145/use_item/

# 演出
    particle minecraft:heart ~ ~0.5 ~ 0.3 0.5 0.3 1 5 force @s
    playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 1 1

# HP回復
    function api:modifier/max_health/get
    execute store result storage api: Argument.Heal double 0.0023 run data get storage api: Return.MaxHealth 100
    function api:heal/modifier
    function api:heal/

# リセット
    function api:heal/reset

#> asset:artifact/0141.aure_soma/use_item/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/141/use_item/

# 演出
    particle minecraft:composter ~ ~1 ~ 0.5 0.5 0.5 1 20 force @s
    particle minecraft:heart ~ ~0.5 ~ 0.3 0.5 0.3 1 5 force @s
    playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 1 1

# MP回復
    function api:mp/get_max
    execute store result storage api: Argument.Fluctuation double 0.32 run data get storage api: Return.MaxMP
    function api:mp/fluctuation

# HP回復
    function api:modifier/max_health/get
    execute store result storage api: Argument.Heal double 0.0018 run data get storage api: Return.MaxHealth 100
    function api:heal/modifier
    function api:heal/

# リセット
    function api:heal/reset

#> asset:artifact/1655.ocean_heart/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1655.ocean_heart/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/offhand

#> Private
# @private
    #declare score_holder $OceanHeart.Health
    #declare score_holder $OceanHeart.LostHealth

# 現在の体力割合を取得する
    function api:entity/player/get_health_per

# 体力が最大の場合は20秒間のバフを付与する
    execute if data storage api: Return{HealthPer:1.0d} run data modify storage api: Argument.ID set value 406
    execute if data storage api: Return{HealthPer:1.0d} run data modify storage api: Argument.Duration set value 400
    execute if data storage api: Return{HealthPer:1.0d} run data modify storage api: Argument.FieldOverride set value {Modifier:0.05d}
    execute if data storage api: Return{HealthPer:1.0d} run function api:entity/mob/effect/give
    execute if data storage api: Return{HealthPer:1.0d} run function api:entity/mob/effect/reset
    execute if data storage api: Return{HealthPer:1.0d} run return 0

# 失った体力の10%を上限20で回復する
    function api:data_get/health
    execute store result score $OceanHeart.Health Temporary run data get storage api: Health 1000
    execute store result score $OceanHeart.LostHealth Temporary run attribute @s generic.max_health get 1000
    scoreboard players operation $OceanHeart.LostHealth Temporary -= $OceanHeart.Health Temporary
    scoreboard players operation $OceanHeart.LostHealth Temporary < $200000 Const
    execute store result storage api: Argument.Heal float 0.0001 run scoreboard players get $OceanHeart.LostHealth Temporary
    function api:heal/modifier
    function api:heal/
    function api:heal/reset

# 一時計算を片付ける
    scoreboard players reset $OceanHeart.Health Temporary
    scoreboard players reset $OceanHeart.LostHealth Temporary

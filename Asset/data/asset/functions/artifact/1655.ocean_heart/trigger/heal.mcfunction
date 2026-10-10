#> asset:artifact/1655.ocean_heart/trigger/heal
#
# @within function asset:artifact/1655.ocean_heart/trigger/3.main

#> Private
# @private
    #declare score_holder $Health
    #declare score_holder $MaxHealth

# 失った体力の10%を上限20で回復する
    function api:data_get/health
    execute store result score $Health Temporary run data get storage api: Health 1000
    execute store result score $MaxHealth Temporary run attribute @s generic.max_health get 1000
    scoreboard players operation $MaxHealth Temporary -= $Health Temporary
    scoreboard players operation $MaxHealth Temporary < $200000 Const
    execute store result storage api: Argument.Heal float 0.0001 run scoreboard players get $MaxHealth Temporary

# 回復を適用する
    function api:heal/modifier
    function api:heal/
    function api:heal/reset

# 一時計算を片付ける
    scoreboard players reset $Health Temporary
    scoreboard players reset $MaxHealth Temporary


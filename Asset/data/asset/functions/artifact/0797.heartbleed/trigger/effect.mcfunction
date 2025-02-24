#> asset:artifact/0797.heartbleed/trigger/effect
#
# 
#
# @within function asset:artifact/0797.heartbleed/trigger/bleed

#> effect_time
# @private
    #declare score_holder $M5.EffectTime # scale: e2
    #declare score_holder $M5.CurrentHealth # scale: e4
    #declare score_holder $M5.MaxHealth # scale: e2

# 効果時間計算 (1-CurrentHealth/MaxHealth)*80 + 20[tick]
    execute as @p[tag=this] run function api:data_get/health
    execute store result score $M5.CurrentHealth Temporary run data get storage api: Health 10000
    execute as @p[tag=this] run function api:modifier/max_health/get
    execute store result score $M5.MaxHealth Temporary run data get storage api: Return.MaxHealth 100
    scoreboard players set $M5.EffectTime Temporary 100

    scoreboard players operation $M5.CurrentHealth Temporary /= $M5.MaxHealth Temporary
    scoreboard players operation $M5.EffectTime Temporary -= $M5.CurrentHealth Temporary
    scoreboard players operation $M5.EffectTime Temporary *= $80 Const
    scoreboard players add $M5.EffectTime Temporary 2000

# effect 付与
    data modify storage api: Argument.ID set value 307
    data modify storage api: Argument.Stack set value 3
    execute store result storage api: Argument.Duration int 0.01 run scoreboard players get $M5.EffectTime Temporary
    execute store result storage api: Argument.FieldOverride.InflicterID int 1 run scoreboard players get @p[tag=this] UserID
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# reset
    scoreboard players reset $M5.EffectTime Temporary
    scoreboard players reset $M5.CurrentHealth Temporary
    scoreboard players reset $M5.MaxHealth Temporary

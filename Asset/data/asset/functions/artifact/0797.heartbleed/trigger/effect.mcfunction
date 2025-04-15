#> asset:artifact/0797.heartbleed/trigger/effect
#
#
#
# @within function asset:artifact/0797.heartbleed/trigger/bleed

#> effect_time
# @private
    #declare score_holder $M5.EffectTime # scale: e2
    #declare score_holder $M5.CurrentHealth # unit[percent] scale: e2

# 効果時間計算 (1-CurrentHealth)*80 + 20[tick]
    execute as @p[tag=this] run function api:entity/player/get_health_per
    execute store result score $M5.CurrentHealth Temporary run data get storage api: Return.HealthPer 100
    scoreboard players set $M5.EffectTime Temporary 100

    scoreboard players operation $M5.EffectTime Temporary -= $M5.CurrentHealth Temporary
    scoreboard players operation $M5.EffectTime Temporary *= $80 Const
    scoreboard players add $M5.EffectTime Temporary 2000

# effect 付与
    data modify storage api: Argument.ID set value 307
    data modify storage api: Argument.FieldOverride.Damage set value 45
    execute store result storage api: Argument.Duration int 0.01 run scoreboard players get $M5.EffectTime Temporary
    execute store result storage api: Argument.FieldOverride.InflicterID int 1 run scoreboard players get @p[tag=this] UserID
    execute as @e[type=#lib:living,tag=M5.Victim,distance=..5] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# reset
    scoreboard players reset $M5.EffectTime Temporary
    scoreboard players reset $M5.CurrentHealth Temporary

#> asset:artifact/1306.will_o_wisp/trigger/damage_and_effect
#
# ターゲットにすること諸々
#
# @within function asset:artifact/1306.will_o_wisp/trigger/3.main

#> Private
# @private
    #declare score_holder $HealthPer
    #declare score_holder $MPPer

# ターゲットの位置で演出
    execute positioned ~ ~0.5 ~ rotated ~ 0 run function asset:artifact/1306.will_o_wisp/trigger/vfx

# 体力割合取得
    execute as @p[tag=this] run function api:entity/player/get_health_per
    execute store result score $HealthPer Temporary run data get storage api: Return.HealthPer 100

# MP割合取得
    execute as @p[tag=this] run function api:entity/player/get_mp_per
    execute store result score $MPPer Temporary run data get storage api: Return.MPPer 100

# 体力割合 or MP割合がN%未満ならMP回復量をN倍として適用する
    execute unless score $HealthPer Temporary matches 50.. run data modify storage asset:temp Success set value true
    execute unless score $MPPer Temporary matches 50.. run data modify storage asset:temp Success set value true
    execute if data storage asset:temp {Success:true} store result storage asset:temp MPHeal float 0.015 run data get storage api: PersistentArgument.AdditionalMPHeal 100

# ダメージ
    data modify storage api: Argument.Damage set value 100f
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Fire"
    execute if data storage asset:temp MPHeal run data modify storage api: Argument.AdditionalMPHeal set from storage asset:temp MPHeal
    execute as @p[tag=this] run function api:damage/modifier
    function api:damage/
    function api:damage/reset

# エフェクト付与
    data modify storage api: Argument.ID set value 339
    data modify storage api: Argument.Duration set value 100
    data modify storage api: Argument.FieldOverride.Damage set value 50
    data modify storage api: Argument.FieldOverride.AdditionalMPHeal set from storage api: PersistentArgument.AdditionalMPHeal
    execute if data storage asset:temp MPHeal run data modify storage api: Argument.FieldOverride.AdditionalMPHeal set from storage asset:temp MPHeal
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @p[tag=this] UserID
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# リセット
    scoreboard players reset $HealthPer Temporary
    scoreboard players reset $MPPer Temporary
    data remove storage asset:temp MPHeal
    data remove storage asset:temp Success

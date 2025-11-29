#> asset:artifact/1306.will_o_wisp/trigger/damage_and_effect
#
# ターゲットにすること諸々
#
# @within function asset:artifact/1306.will_o_wisp/trigger/3.main

#> Private
# @private
    #declare score_holder $10A.Damage

# ターゲットの位置で演出
    execute positioned ~ ~0.5 ~ rotated ~ 0 run function asset:artifact/1306.will_o_wisp/trigger/vfx

# ダメージ
    data modify storage api: Argument.Damage set value 100f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Water"
    execute as @p[tag=this] run function api:damage/modifier
    function api:damage/
    function api:damage/reset

# エフェクトのダメージ計算
    execute as @p[tag=this] run function api:modifier/max_health/get
    execute store result score $10A.Damage Temporary run data get storage api: Return.MaxHealth 0.2
    scoreboard players add $10A.Damage Temporary 50

# エフェクト付与
    data modify storage api: Argument.ID set value 339
    data modify storage api: Argument.Duration set value 100
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @p[tag=this] UserID
    execute store result storage api: Argument.FieldOverride.Damage int 1 run scoreboard players get $10A.Damage Temporary
    data modify storage api: Argument.FieldOverride.AdditionalMPHeal set from storage api: PersistentArgument.AdditionalMPHeal
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

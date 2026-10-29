#> asset:artifact/1584.pk_insight/damage_from_entity/3.main
#
#
#
# @within function asset:artifact/1584.pk_insight/damage_from_entity/2.check_condition

#> Private
# @private
    #declare score_holder $Duration
    #declare score_holder $FlagTick

# Effect 386の残り効果時間が9tick以内なら成功
    data modify storage api: Argument.ID set value 386
    function api:entity/mob/effect/get/from_id
    execute store result score $Duration Temporary run data get storage api: Return.Effect.Duration
    execute store result score $FlagTick Temporary run data get storage api: Return.Effect.Field.FlagTick
    execute if score $Duration Temporary matches 0.. if score $Duration Temporary <= $FlagTick Temporary run function asset:artifact/1584.pk_insight/damage_from_entity/3.1.success.m with storage api: Return.Effect.Field.Damage

# Effect剝奪
    data modify storage api: Argument.ID set value 386
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset

# リセット
    scoreboard players reset $Duration Temporary
    scoreboard players reset $FlagTick Temporary

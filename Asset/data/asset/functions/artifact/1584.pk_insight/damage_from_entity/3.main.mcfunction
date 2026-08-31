#> asset:artifact/1584.pk_insight/damage_from_entity/3.main
#
#
#
# @within function asset:artifact/1584.pk_insight/damage_from_entity/2.check_condition

#> Private
# @private
    #declare score_holder $Duration

# Effect 386の残り効果時間が9tick以内なら成功
    data modify storage api: Argument.ID set value 386
    function api:entity/mob/effect/get/from_id
    execute store result score $Duration Temporary run data get storage api: Return.Effect.Duration
    function api:entity/mob/effect/reset
    execute if score $Duration Temporary matches ..9 run function asset:artifact/1584.pk_insight/damage_from_entity/3.1.success
# 失敗したらEffectも剝奪
    execute unless score $Duration Temporary matches ..9 run function asset:artifact/1584.pk_insight/damage_from_entity/3.2.failure

# リセット
    scoreboard players reset $Duration Temporary

#> asset:object/2047.prominence_magic/tick/debuff
#
# デバフを付与
#
# @within function asset:object/2047.prominence_magic/tick/damage

# デバフを付与
# スタックと効果時間はフィールドから取得
    data modify storage api: Argument.ID set value 614
    data modify storage api: Argument.Stack set from storage asset:context this.Stack
    data modify storage api: Argument.Duration set from storage asset:context this.Duration
    data modify storage api: Argument.FieldOverride.MobUUID set from storage asset:context this.MobUUID
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..1.6] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

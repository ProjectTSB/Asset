#> asset:object/2049.lightning_magic/hit_entity/debuff
#
# デバフを付与
#
# @within function asset:object/2049.lightning_magic/hit_entity/

# デバフを付与
    data modify storage api: Argument.ID set value 616
    data modify storage api: Argument.Stack set from storage asset:context this.Stack
    data modify storage api: Argument.Duration set from storage asset:context this.Duration
    data modify storage api: Argument.FieldOverride.MobUUID set from storage asset:context this.MobUUID
    function api:entity/mob/effect/give

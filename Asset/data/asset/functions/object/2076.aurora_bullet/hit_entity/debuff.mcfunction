#> asset:object/2076.aurora_bullet/hit_entity/debuff
#
# デバフを付与する
#
# @within function asset:object/2076.aurora_bullet/hit_entity/

# Effectを付与
    data modify storage api: Argument.ID set value 605
    data modify storage api: Argument.Stack set from storage asset:context this.Stack
    data modify storage api: Argument.Duration set value 80
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @a[tag=!PlayerShouldInvulnerable,dx=0] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

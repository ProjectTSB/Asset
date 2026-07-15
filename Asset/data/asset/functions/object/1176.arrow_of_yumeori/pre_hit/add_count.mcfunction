#> asset:object/1176.arrow_of_yumeori/pre_hit/add_count
#
#
#
# @within function asset:object/1176.arrow_of_yumeori/pre_hit/

# カウント用のバフを付与
    data modify storage api: Argument.ID set value 379
    data modify storage api: Argument.Duration set from storage asset:context this.Effect.Count.Duration
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

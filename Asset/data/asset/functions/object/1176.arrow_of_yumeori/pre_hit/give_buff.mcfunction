#> asset:object/1176.arrow_of_yumeori/pre_hit/give_buff
#
#
#
# @within function asset:object/1176.arrow_of_yumeori/pre_hit/

# 曲射用のバフを付与
    data modify storage api: Argument.ID set value 380
    data modify storage api: Argument.Duration set from storage asset:context this.Effect.CurveShot.Duration
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# カウント用バフを削除
    data modify storage api: Argument.ID set value 379
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset

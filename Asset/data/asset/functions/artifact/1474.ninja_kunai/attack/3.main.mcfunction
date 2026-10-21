#> asset:artifact/1474.ninja_kunai/attack/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1474.ninja_kunai/attack/2.check_condition

# Effect削除
    data modify storage api: Argument.ID set value 385
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset

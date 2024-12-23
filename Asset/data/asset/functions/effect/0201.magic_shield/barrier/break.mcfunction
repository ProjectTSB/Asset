#> asset:effect/0201.magic_shield/barrier/break
#
# バリア破壊時の処理
#
# @within function asset:effect/0201.magic_shield/barrier/add

# このエフェクトを削除
    data modify storage api: Argument.ID set value 201
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset

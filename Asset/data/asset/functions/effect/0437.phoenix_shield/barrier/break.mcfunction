#> asset:effect/0437.phoenix_shield/barrier/break
#
# バリアが全て削られた時の処理
#
# @within function api:entity/player/absorption/**

# このエフェクトを削除
    data modify storage api: Argument.ID set value 437
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset

#> asset:artifact/0297.spirit_world_trance/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/297/click/

# 霊界状態になる
    data modify storage api: Argument.ID set value 206
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

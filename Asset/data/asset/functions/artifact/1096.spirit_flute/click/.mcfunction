#> asset:artifact/1096.spirit_flute/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/1096/click/


# バフを付与
    data modify storage api: Argument.ID set value 258
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

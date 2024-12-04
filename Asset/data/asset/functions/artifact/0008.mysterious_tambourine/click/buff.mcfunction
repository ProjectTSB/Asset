#> asset:artifact/0008.mysterious_tambourine/click/buff
#
# バフを付与
#
# @within function asset:artifact/0008.mysterious_tambourine/click/

# 鼓舞(ID:272)を付与
    data modify storage api: Argument.ID set value 272
    function api:entity/mob/effect/give

#> asset:mob/0265.dark_familiar/tick/kill
#
# 消える
#
# @within function asset:mob/0265.dark_familiar/tick/

# VFX
    execute anchored eyes run particle reverse_portal ^ ^ ^ 0.25 0.25 0.25 0.5 20 normal @a

# 消滅
    function api:mob/remove

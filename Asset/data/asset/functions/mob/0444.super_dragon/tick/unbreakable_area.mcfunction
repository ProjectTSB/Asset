#> asset:mob/0444.super_dragon/tick/unbreakable_area
#
#
#
# @within function asset:mob/0444.super_dragon/tick/

# 念の為既に死んでるならreturn
    execute if entity @s[tag=Death] run return fail

# デスログと共に即死
    tellraw @a[distance=..16] {"translate": "%1$sは空気が合わなかった","with":[{"selector":"@s"}]}
    function api:mob/kill

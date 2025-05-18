#> asset:mob/0444.super_dragon/tick/near_angel
#
#
#
# @within function asset:mob/0444.super_dragon/tick/

# 念の為既に死んでるならreturn
    execute if entity @s[tag=Death] run return fail

# デスログと共に即死
    tellraw @a[distance=..16] {"translate": "%1$sは天使の威圧感に圧倒された","with":[{"selector":"@s"}]}
    execute if entity @s[tag=!Death] run function api:mob/kill

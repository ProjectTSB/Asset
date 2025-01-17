#> asset:mob/0229.burning_blaze.shot/hit
#
#
#
# @within function asset:mob/0229.burning_blaze.shot/tick/

# ダメージ
    data modify storage lib: Argument set value {Damage:22,AttackType:Physical,AttackElement:Fire}
    function api:damage/modifier
    execute as @a[tag=Hit,distance=..5] run function api:damage/
    function api:damage/reset

# タグ消し
    tag @a[tag=Hit,distance=..5] remove Hit

# 自殺
    kill @s

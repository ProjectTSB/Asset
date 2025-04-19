#> asset:effect/0338.jump_spring/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0338.jump_spring/_/tick

# execute if predicate lib:is_sneaking if entity @s[tag=!9E.Sneak] run function asset:effect/0338.jump_spring/tick/sneak
execute unless predicate lib:is_sneaking if entity @s[tag=9E.Sneak] run function asset:effect/0338.jump_spring/tick/unsneak

function asset:effect/0338.jump_spring/tick/update_effect.m with storage asset:context this

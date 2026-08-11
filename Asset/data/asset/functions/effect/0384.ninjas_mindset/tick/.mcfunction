#> asset:effect/0384.ninjas_mindset/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0384.ninjas_mindset/_/tick

    execute if data storage asset:context {Stack:4} if predicate asset:effect/0384.ninjas_mindset/is_in_darkness run function asset:effect/0384.ninjas_mindset/fullset/darkness_buff

    execute if data storage asset:context {Stack:4} unless predicate asset:effect/0384.ninjas_mindset/is_in_darkness run function asset:effect/0384.ninjas_mindset/fullset/equip

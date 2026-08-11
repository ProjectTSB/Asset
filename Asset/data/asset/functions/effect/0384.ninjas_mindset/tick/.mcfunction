#> asset:effect/0384.ninjas_mindset/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0384.ninjas_mindset/_/tick

# 透明化
    execute if data storage asset:context {Stack:4} run effect give @s invisibility 1 0 true

# 暗所バフ
    execute if data storage asset:context {Stack:4} if predicate asset:effect/0384.ninjas_mindset/is_in_darkness run function asset:effect/0384.ninjas_mindset/fullset/darkness_buff

    execute if data storage asset:context {Stack:4} unless predicate asset:effect/0384.ninjas_mindset/is_in_darkness run function asset:effect/0384.ninjas_mindset/fullset/equip

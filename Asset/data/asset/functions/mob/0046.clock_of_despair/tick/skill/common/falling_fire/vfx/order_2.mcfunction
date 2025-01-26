#> asset:mob/0046.clock_of_despair/tick/skill/common/falling_fire/vfx/order_2
#
#
#
# @within function asset:mob/0046.clock_of_despair/tick/skill/common/falling_fire/show_order_vfx

execute as @a[distance=..48] facing entity @s eyes rotated ~ 0 positioned ^0.3 ^ ^ run function asset:mob/0046.clock_of_despair/tick/skill/common/falling_fire/vfx/sphere
execute as @a[distance=..48] facing entity @s eyes rotated ~ 0 positioned ^-.3 ^ ^ run function asset:mob/0046.clock_of_despair/tick/skill/common/falling_fire/vfx/sphere

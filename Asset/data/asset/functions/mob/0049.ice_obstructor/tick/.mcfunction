#> asset:mob/0049.ice_obstructor/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/alias/49/tick

# 下が氷なら加速
    execute if block ~ ~-1 ~ #ice run effect give @s speed 1 3 true

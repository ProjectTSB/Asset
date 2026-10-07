#> asset:mob/0186.ferocious_bee/tick/end_hurt_time
#
#
#
# @within function asset:mob/0186.ferocious_bee/tick/

#
    data modify storage asset:context this.NoAI set value true

# NoAIを有効化
    data modify entity @s NoAI set value true

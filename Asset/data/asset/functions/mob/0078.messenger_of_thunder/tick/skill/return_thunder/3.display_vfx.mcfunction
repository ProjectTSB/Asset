#> asset:mob/0078.messenger_of_thunder/tick/skill/return_thunder/3.display_vfx
#
# vfxを表示する
#
# @within function asset:mob/0078.messenger_of_thunder/tick/skill/return_thunder/2.ready

# 線を表示する
# 強化状態なら追加で2本表示する
    execute if entity @s[scores={26.Tick=..19}] run function asset:mob/0078.messenger_of_thunder/tick/skill/vfx/line
    execute if predicate api:global_vars/difficulty/max/normal if entity @s[tag=26.HPLess50Per] rotated ~30 ~ run function asset:mob/0078.messenger_of_thunder/tick/skill/vfx/line
    execute if predicate api:global_vars/difficulty/max/normal if entity @s[tag=26.HPLess50Per] rotated ~-30 ~ run function asset:mob/0078.messenger_of_thunder/tick/skill/vfx/line
    execute if predicate api:global_vars/difficulty/min/hard rotated ~30 ~ run function asset:mob/0078.messenger_of_thunder/tick/skill/vfx/line
    execute if predicate api:global_vars/difficulty/min/hard rotated ~-30 ~ run function asset:mob/0078.messenger_of_thunder/tick/skill/vfx/line

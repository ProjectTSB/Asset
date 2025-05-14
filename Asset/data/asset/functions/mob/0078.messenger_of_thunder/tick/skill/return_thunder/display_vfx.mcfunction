#> asset:mob/0078.messenger_of_thunder/tick/skill/return_thunder/display_vfx
#
# vfxを表示する
#
# @within function asset:mob/0078.messenger_of_thunder/tick/skill/return_thunder/ready

# 線を表示する
# 強化状態なら追加で2本表示する
    execute if entity @s[scores={General.Mob.Tick=..19}] run function asset:mob/0078.messenger_of_thunder/tick/skill/return_thunder/vfx
    execute if predicate api:global_vars/difficulty/max/2_hard if entity @s[tag=26.HPLess50Per] rotated ~30 ~ run function asset:mob/0078.messenger_of_thunder/tick/skill/return_thunder/vfx
    execute if predicate api:global_vars/difficulty/max/2_hard if entity @s[tag=26.HPLess50Per] rotated ~-30 ~ run function asset:mob/0078.messenger_of_thunder/tick/skill/return_thunder/vfx
    execute if predicate api:global_vars/difficulty/min/3_blessless rotated ~30 ~ run function asset:mob/0078.messenger_of_thunder/tick/skill/return_thunder/vfx
    execute if predicate api:global_vars/difficulty/min/3_blessless rotated ~-30 ~ run function asset:mob/0078.messenger_of_thunder/tick/skill/return_thunder/vfx

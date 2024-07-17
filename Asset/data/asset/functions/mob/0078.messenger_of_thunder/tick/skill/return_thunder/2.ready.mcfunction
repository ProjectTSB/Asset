#> asset:mob/0078.messenger_of_thunder/tick/skill/return_thunder/2.ready
#
# 予備動作的な
#
# @within function asset:mob/0078.messenger_of_thunder/tick/skill/return_thunder/1

# 前方に線を表示
    execute if entity @s[scores={26.Tick=..19}] run function asset:mob/0078.messenger_of_thunder/tick/skill/vfx/line

# 強化状態なら追加で2本
    execute if entity @s[tag=26.Phase2] rotated ~30 ~ run function asset:mob/0078.messenger_of_thunder/tick/skill/vfx/line
    execute if entity @s[tag=26.Phase2] rotated ~-30 ~ run function asset:mob/0078.messenger_of_thunder/tick/skill/vfx/line

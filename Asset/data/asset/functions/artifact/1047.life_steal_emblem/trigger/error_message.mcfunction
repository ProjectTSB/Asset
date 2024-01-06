#> asset:artifact/1047.life_steal_emblem/trigger/error_message
#
# エラーメッセージ
#
# @within function asset:artifact/1047.life_steal_emblem/trigger/2.check_condition

playsound minecraft:block.note_block.bass player @s ~ ~ ~ 2 0.7
tellraw @s {"text":"発動条件を満たしていません。","color":"red"}
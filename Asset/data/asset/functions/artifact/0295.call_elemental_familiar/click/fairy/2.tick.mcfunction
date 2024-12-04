#> asset:artifact/0295.call_elemental_familiar/click/fairy/2.tick
#
# scheduleでループする、妖精を動かすコマンド。
#
# @within function
#   asset:artifact/0295.call_elemental_familiar/click/fairy/2.tick
#   asset:artifact/0295.call_elemental_familiar/click/
#   asset:artifact/0295.call_elemental_familiar/click/rejoin_process

# エンティティに実行させる
    execute as @e[type=armor_stand,tag=87.Familiar] at @s run function asset:artifact/0295.call_elemental_familiar/click/fairy/

# エンティティがいればループ
    execute if entity @e[type=armor_stand,tag=87.Familiar,limit=1] run schedule function asset:artifact/0295.call_elemental_familiar/click/fairy/2.tick 1t
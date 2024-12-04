#> asset:artifact/0295.call_elemental_familiar/rejoin_process
#
# プレイヤー再参加時の処理
#
# @within tag/function asset:rejoin

# このfunctionをループさせる
    execute if entity @e[type=armor_stand,tag=87.Familiar,limit=1] run schedule function asset:artifact/0295.call_elemental_familiar/click/fairy/2.tick 1t
    execute if entity @e[type=armor_stand,tag=87.Shot,limit=1] run schedule function asset:artifact/0295.call_elemental_familiar/click/shot/2.tick 1t
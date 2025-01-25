#> asset:artifact/0210.terra_blade/rejoin_process
#
# プレイヤー再参加時の処理
#
# @within tag/function asset:rejoin

# このfunctionをループさせる
    execute if entity @e[type=armor_stand,tag=5U.Sword,limit=1] run schedule function asset:artifact/0210.terra_blade/click/sword/sword_schedule 1t
    execute if entity @e[type=armor_stand,tag=5U.Shot,limit=1] run schedule function asset:artifact/0210.terra_blade/click/3.1.terra_shot_tick 1t

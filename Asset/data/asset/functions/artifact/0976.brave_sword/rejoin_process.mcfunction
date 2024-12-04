#> asset:artifact/0976.brave_sword/rejoin_process
#
# プレイヤー再参加時の処理
#
# @within tag/function asset:rejoin

# ループ
    execute if entity @e[type=armor_stand,tag=R4.SlashShot] run schedule function asset:artifact/0976.brave_sword/click/slash_shot/1.tick 1t
    execute if entity @p[scores={R4.Wait=0..}] run schedule function asset:artifact/0976.brave_sword/click/combo/1.tick 1t
    execute if entity @e[type=armor_stand,tag=R4.SlashSweep,limit=1] run schedule function asset:artifact/0976.brave_sword/click/slash_entity/1.tick 1t
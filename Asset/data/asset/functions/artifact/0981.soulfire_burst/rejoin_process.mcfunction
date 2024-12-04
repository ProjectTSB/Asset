#> asset:artifact/0981.soulfire_burst/rejoin_process
#
# プレイヤー再参加時の処理
#
# @within tag/function asset:rejoin

# このfunctionをループさせる
    execute if entity @e[type=armor_stand,tag=R9.SmallFireball] run schedule function asset:artifact/0981.soulfire_burst/click/small_fireball/2.tick 1t
    execute if entity @e[type=armor_stand,tag=R9.BigFireball] run schedule function asset:artifact/0981.soulfire_burst/click/big_fireball/2.tick 1t
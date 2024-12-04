#> asset:artifact/1079.allochromatic/rejoin_process
#
# プレイヤー再参加時の処理
#
# @within tag/function asset:rejoin

# ループ
    execute if entity @e[type=marker,tag=TZ.AttackEntity,limit=1] run schedule function asset:artifact/1079.allochromatic/click/resonance_attack/3.loop 1t replace
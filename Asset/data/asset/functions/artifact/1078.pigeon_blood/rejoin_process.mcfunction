#> asset:artifact/1078.pigeon_blood/rejoin_process
#
# プレイヤー再参加時の処理
#
# @within tag/function asset:rejoin

# ループ再開
    execute if entity @e[tag=TY.AttackEntity,limit=1] run schedule function asset:artifact/1078.pigeon_blood/attack_melee/resonance_attack/3.loop 1t replace
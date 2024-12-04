#> asset:artifact/1078.pigeon_blood/attack_melee/resonance_attack/3.loop
#
# ループさせる
#
# @within function
#   asset:artifact/1078.pigeon_blood/attack_melee/resonance_attack/1.summon_entity
#   asset:artifact/1078.pigeon_blood/attack_melee/resonance_attack/4.main
#   asset:artifact/1078.pigeon_blood/attack_melee/rejoin_process

# 実行
    execute as @e[type=marker,tag=TY.AttackEntity] at @s run function asset:artifact/1078.pigeon_blood/attack_melee/resonance_attack/4.main
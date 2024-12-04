#> asset:artifact/1079.allochromatic/click/resonance_attack/3.loop
#
# ループ処理
#
# @within function
#   asset:artifact/1079.allochromatic/click/resonance_attack/1.summon_entity
#   asset:artifact/1079.allochromatic/click/resonance_attack/4.main
#   asset:artifact/1079.allochromatic/rejoin_process

# メイン処理実行
    execute as @e[type=marker,tag=TZ.AttackEntity] at @s run function asset:artifact/1079.allochromatic/click/resonance_attack/4.main

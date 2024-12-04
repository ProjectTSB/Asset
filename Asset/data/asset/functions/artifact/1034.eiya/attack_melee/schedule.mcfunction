#> asset:artifact/1034.eiya/attack_melee/schedule
#
# ループ処理部
#
# @within function
#   asset:artifact/1034.eiya/attack_melee/
#   asset:artifact/1034.eiya/attack_melee/schedule
#   asset:artifact/1034.eiya/attack_melee/rejoin_process

# ループ
    execute if entity @p[scores={SQ.WaitingTime=0..}] run schedule function asset:artifact/1034.eiya/attack_melee/schedule 1t replace

# WaitingTimeを減らす
    execute as @a[scores={SQ.WaitingTime=0..}] run scoreboard players remove @s SQ.WaitingTime 1

# WaitingTimeが0以下のプレイヤーのスコアをリセット
    execute as @a[scores={SQ.WaitingTime=..0}] run function asset:artifact/1034.eiya/attack_melee/reset
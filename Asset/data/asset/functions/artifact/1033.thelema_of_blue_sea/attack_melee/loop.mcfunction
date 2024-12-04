#> asset:artifact/1033.thelema_of_blue_sea/attack_melee/loop
#
# 次の攻撃への待機時間の処理
#
# @within function
#   asset:artifact/1033.thelema_of_blue_sea/attack_melee/
#   asset:artifact/1033.thelema_of_blue_sea/attack_melee/loop
#   asset:artifact/1033.thelema_of_blue_sea/attack_melee/rejoin_process


# WaitingTimeを減らす
    scoreboard players remove @a[scores={SP.WaitingTime=0..}] SP.WaitingTime 1

# WaitingTimeが0以下ならリセット
    execute as @a[scores={SP.WaitingTime=..0}] run scoreboard players reset @s SP.AttackCount
    execute as @a[scores={SP.WaitingTime=..0}] run scoreboard players reset @s SP.WaitingTime

# ループ
    execute if entity @p[scores={SP.WaitingTime=0..}] run schedule function asset:artifact/1033.thelema_of_blue_sea/attack_melee/loop 1t replace
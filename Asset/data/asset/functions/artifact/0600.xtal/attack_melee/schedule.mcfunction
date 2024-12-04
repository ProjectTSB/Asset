#> asset:artifact/0600.xtal/attack_melee/schedule
#
#
#
# @within function
#       asset:artifact/0600.xtal/attack_melee/
#       asset:artifact/0600.xtal/attack_melee/schedule
#       asset:artifact/0600.xtal/attack_melee/rejoin_process
# プレイヤーに実行させる
    execute as @a[scores={GO.Time=1..}] at @s run function asset:artifact/0600.xtal/attack_melee/4.wait_time
# ループする
    execute if entity @a[scores={GO.Time=1..}] run schedule function asset:artifact/0600.xtal/attack_melee/schedule 1t replace
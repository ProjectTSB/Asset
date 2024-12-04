#> asset:artifact/0369.fire_magic/click/3.1.tick
#
# 弾の処理
#
# @within function
#    asset:artifact/0369.fire_magic/click/
#    asset:artifact/0369.fire_magic/click/3.1.tick
#    asset:artifact/0369.fire_magic/rejoin_process

# 火の玉が実行する処理
    execute as @e[tag=A9.Fire] at @s run function asset:artifact/0369.fire_magic/click/3.2.fireball

# Scheduleループ
    execute if entity @e[tag=A9.Fire] run schedule function asset:artifact/0369.fire_magic/click/3.1.tick 1t replace

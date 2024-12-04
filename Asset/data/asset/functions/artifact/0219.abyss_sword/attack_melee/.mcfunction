#> asset:artifact/0219.abyss_sword/attack_melee/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/219/attack_melee/

# 演出
    execute as @e[type=#lib:living,type=!player,tag=Victim,tag=!Immovable,distance=..10] at @s run particle minecraft:witch ~ ~ ~ 0.5 0.5 0.5 2 50 force @a[distance=..10]
    playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 1 1

# テレポート処理
    execute as @e[type=#lib:living,type=!player,tag=Victim,tag=!Immovable,distance=..10] at @s run tp ~ ~-1 ~

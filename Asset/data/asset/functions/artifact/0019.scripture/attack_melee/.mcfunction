#> asset:artifact/0019.scripture/attack_melee/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/19/attack_melee/

# 攻撃した対象に回復とパーティクル
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..10] run effect give @s minecraft:instant_health 1 1 true
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..10] at @s run particle end_rod ~ ~ ~ 1 1 1 0.1 100 force @a[distance=..10]

# SE
    playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 20 1

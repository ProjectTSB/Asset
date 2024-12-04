#> asset:artifact/0073.suzuran_charm/attack_melee/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/73/attack_melee/

# 物理無属性ダメージ:50
    data modify storage lib: Argument.Damage set value 50.0f
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "None"
    function lib:damage/modifier
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..10] run function lib:damage/
# リセット
    function lib:damage/reset

# 敵に衰弱を付与
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..10] run effect give @s wither 1000000 4 false

# 演出
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..10] run particle minecraft:smoke ~ ~ ~ 1 1 1 0.0001 500 normal @a[distance=..30]
    playsound minecraft:entity.splash_potion.break player @a[distance=..30] ~ ~ ~ 1 0.5

# スズラン減少
    clear @s lily_of_the_valley 1

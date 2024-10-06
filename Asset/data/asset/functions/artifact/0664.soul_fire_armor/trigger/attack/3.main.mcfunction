#> asset:artifact/0664.soul_fire_armor/trigger/attack/3.main
#
# フルセット時の近接攻撃
#
# @within function asset:artifact/0664.soul_fire_armor/trigger/attack/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    data modify storage asset:artifact Index set value 1
    function asset:artifact/common/use/head

# 演出
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..64] at @s run function asset:artifact/0664.soul_fire_armor/trigger/attack/4.particle
    execute at @e[type=#lib:living,type=!player,tag=Victim,distance=..64] run playsound block.fire.ambient player @a ~ ~ ~ 2 0.8 0
    execute at @e[type=#lib:living,type=!player,tag=Victim,distance=..64] run playsound particle.soul_escape player @a ~ ~ ~ 2 0 0
    execute at @e[type=#lib:living,type=!player,tag=Victim,distance=..64] run playsound minecraft:block.sculk_sensor.clicking player @a ~ ~ ~ 0.6 0.4 0

# ダメージ
    data modify storage api: Argument.Damage set value 80.0f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Fire"
    data modify storage api: Argument.DamageType set value "Projectile"
    function api:damage/modifier
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..64] run function api:damage/

# リセット
    function api:damage/reset

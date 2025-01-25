#> asset:artifact/0733.percentage_sword/attack_melee/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/733/attack_melee/


# 演出
    execute positioned ^ ^1.2 ^0.5 rotated ~ ~-4 run function asset:artifact/0733.percentage_sword/attack_melee/4.sweeping_particle
    playsound entity.player.attack.sweep player @a ~ ~ ~ 0.8 1 0
    playsound block.beacon.activate player @a ~ ~ ~ 0.6 1.7 0
    playsound block.beacon.activate player @a ~ ~ ~ 0.6 1.8 0
    playsound block.beacon.power_select player @a ~ ~ ~ 0.4 1.8 0
    playsound block.beacon.power_select player @a ~ ~ ~ 0.4 2.0 0

# 4割の割合追加ダメージまでの処理
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "None"
    data modify storage lib: Argument.FixedDamage set value 1b
    execute as @e[type=#lib:living,tag=Victim,tag=!Enemy.Boss,tag=!Uninterferable,distance=..6] store result storage lib: Argument.Damage float 0.40 run function api:mob/get_max_health

# 天使の場合、1%にする
    execute as @e[type=#lib:living,tag=Victim,tag=Enemy.Boss,tag=!Uninterferable,distance=..6] store result storage lib: Argument.Damage float 0.01 run function api:mob/get_max_health

# ダメージ
    function lib:damage/modifier
    execute if data storage lib: Argument.Damage as @e[type=#lib:living,tag=Victim,distance=..6] run function lib:damage/

# 色々リセット
    function lib:damage/reset

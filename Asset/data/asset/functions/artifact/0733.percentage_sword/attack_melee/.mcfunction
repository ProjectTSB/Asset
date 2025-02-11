#> asset:artifact/0733.percentage_sword/attack_melee/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/733/attack_melee/

# 演出
    execute positioned ^ ^1.2 ^0.5 rotated ~ ~-4 run function asset:artifact/0733.percentage_sword/attack_melee/vfx
    playsound entity.player.attack.sweep player @a ~ ~ ~ 0.8 1 0
    playsound block.beacon.activate player @a ~ ~ ~ 0.6 1.7 0
    playsound block.beacon.activate player @a ~ ~ ~ 0.6 1.8 0
    playsound block.beacon.power_select player @a ~ ~ ~ 0.4 1.8 0
    playsound block.beacon.power_select player @a ~ ~ ~ 0.4 2.0 0

# 4割の割合追加ダメージまでの処理
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "None"
    data modify storage api: Argument.FixedDamage set value 1b
    execute as @e[type=#lib:living,tag=Victim,tag=!Enemy.Boss,tag=!Uninterferable,distance=..6] store result storage api: Argument.Damage float 0.99 run function api:mob/get_max_health

# 天使の場合、1%にする
    execute as @e[type=#lib:living,tag=Victim,tag=Enemy.Boss,tag=!Uninterferable,distance=..6] run function asset:artifact/0733.percentage_sword/attack_melee/angel_damage_calc

# ダメージ
    function api:damage/modifier
    execute if data storage api: Argument.Damage as @e[type=#lib:living,tag=Victim,distance=..6] run function api:damage/

# 色々リセット
    function api:damage/reset

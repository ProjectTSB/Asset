#> asset:artifact/0733.percentage_sword/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0733.percentage_sword/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 演出
    execute positioned ^ ^1.2 ^0.5 rotated ~ ~-4 run function asset:artifact/0733.percentage_sword/trigger/vfx
    playsound entity.player.attack.sweep player @a ~ ~ ~ 0.8 1 0
    playsound block.beacon.activate player @a ~ ~ ~ 0.6 1.7 0
    playsound block.beacon.activate player @a ~ ~ ~ 0.6 1.8 0
    playsound block.beacon.power_select player @a ~ ~ ~ 0.4 1.8 0
    playsound block.beacon.power_select player @a ~ ~ ~ 0.4 2.0 0

# 4割の割合追加ダメージまでの処理
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "None"
    data modify storage api: Argument.FixedDamage set value 1b
    execute as @e[type=#lib:living,tag=Victim,tag=!Enemy.Boss,tag=!Uninterferable,distance=..20] store result storage api: Argument.Damage float 0.99 run function api:mob/get_max_health

# 天使の場合、1%にする
    execute as @e[type=#lib:living,tag=Victim,tag=Enemy.Boss,tag=!Uninterferable,distance=..20] run function asset:artifact/0733.percentage_sword/trigger/angel_damage_calc

# ダメージ
    function api:damage/modifier
    execute if data storage api: Argument.Damage as @e[type=#lib:living,tag=Victim,distance=..20] run function api:damage/

# 色々リセット
    function api:damage/reset

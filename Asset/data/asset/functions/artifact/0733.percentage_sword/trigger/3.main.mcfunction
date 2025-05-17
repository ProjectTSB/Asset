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

# 割合ダメージ
    # 雑魚の場合は99%
        execute as @e[type=#lib:living,tag=Victim,tag=!Enemy.Boss,tag=!Uninterferable,distance=..20] store result storage api: Argument.Damage float 0.99 run function api:mob/get_max_health

    # 天使の場合は1%にする
        execute as @e[type=#lib:living,tag=Victim,tag=Enemy.Boss,tag=!Uninterferable,distance=..20] run function asset:artifact/0733.percentage_sword/trigger/angel_damage_calc

    # 起こり得ないはずだが、ダメージが設定されていなければ1を設定しておく
        execute unless data storage api: Argument.Damage run data modify storage api: Argument.Damage set value 1

    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "None"
    data modify storage api: Argument.FixedDamage set value 1b
    function api:damage/modifier
    execute if data storage api: Argument.Damage as @e[type=#lib:living,tag=Victim,distance=..20] run function api:damage/
    function api:damage/reset

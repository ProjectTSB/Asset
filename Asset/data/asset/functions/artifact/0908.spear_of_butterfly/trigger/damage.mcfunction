#> asset:artifact/0908.spear_of_butterfly/trigger/damage
#
#
#
# @within function asset:artifact/0908.spear_of_butterfly/trigger/3.main

#> Private
# @private
    #declare score_holder $P8.HealthPer
    #declare score_holder $P8.DamageBonus
    #declare score_holder $P8.DamageCap

# ダメージ関連
    # 基礎ダメージ
        scoreboard players add $P8.Damage Temporary 110
    # 最大体力によるダメージボーナスのキャップ設定
        scoreboard players set $P8.DamageCap Temporary 200

# 体力割合を取得
    function api:entity/player/get_health_per
    execute store result score $P8.HealthPer Temporary run data get storage api: Return.HealthPer 100

# 最大体力を取得
    function api:modifier/max_health/get

# 体力が50%未満か否かで最大体力によるダメージボーナスを調整する
    execute if score $P8.HealthPer Temporary matches 50.. store result score $P8.DamageBonus Temporary run data get storage api: Return.MaxHealth 0.6
    execute unless score $P8.HealthPer Temporary matches 50.. store result score $P8.DamageBonus Temporary run data get storage api: Return.MaxHealth 1.6

# ダメージボーナスのキャップ
    scoreboard players operation $P8.DamageBonus Temporary < $P8.DamageCap Temporary

# 基礎ダメージとダメージボーナスの合算
    scoreboard players operation $P8.Damage Temporary += $P8.DamageBonus Temporary

# 5段目はダメージを半分にする
    execute if score @s P8.AttackCount matches 5 run scoreboard players operation $P8.Damage Temporary /= $2 Const

# ダメージ
    execute store result storage api: Argument.Damage int 1.0 run scoreboard players get $P8.Damage Temporary
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Fire"
    function api:damage/modifier
    execute as @e[type=#lib:living,type=!player,tag=Victim,tag=!Uninterferable,distance=..6] run function api:damage/
    function api:damage/reset

# リセット
    scoreboard players reset $P8.HealthPer Temporary
    scoreboard players reset $P8.DamageBonus Temporary
    scoreboard players reset $P8.DamageCap Temporary

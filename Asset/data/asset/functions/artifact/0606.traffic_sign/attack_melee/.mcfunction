#> asset:artifact/0606.traffic_sign/attack_melee/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/606/attack_melee/

# 演出
    execute at @e[type=#lib:living,tag=Victim,tag=!Uninterferable,distance=..6] run function asset:artifact/0606.traffic_sign/attack_melee/3.1.vfx

# 次の段階までの待機時間のスコア
# 差が50tick以上ならAttackCountをリセットする
    execute store result score $GU.Temp Temporary run time query gametime
    scoreboard players operation $GU.Temp Temporary -= @s GU.LatestUseTick
    execute if score $GU.Temp Temporary matches 50.. run scoreboard players reset @s GU.Count
    scoreboard players reset $GU.Temp Temporary
    scoreboard players add @s GU.Count 1

# 使用tickをスコアで残しておく
    execute store result score @s GU.LatestUseTick run time query gametime

# カウントが4以上なら道路標識を召喚する
    execute if score @s GU.Count matches 4.. at @e[type=#lib:living,tag=Victim,tag=!Uninterferable,distance=..6] run function asset:artifact/0606.traffic_sign/attack_melee/3.2.sign_summon

# ダメージ
    execute store result storage api: Argument.Damage float 1 run random value 300..500
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    function api:damage/modifier
    execute as @e[type=#lib:living,tag=Victim,tag=!Uninterferable,distance=..6] run function api:damage/

# 鈍足
    # execute as @e[type=#lib:living,tag=Victim,tag=!Uninterferable,distance=..6] run effect give @s slowness 10 0 true

# スコアとかストレージとかリセット
    function api:damage/reset

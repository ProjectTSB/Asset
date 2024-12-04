#> asset:artifact/0606.traffic_sign/attack_melee/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/606/attack_melee/

# 演出
    execute at @e[type=#lib:living,tag=Victim,tag=!Uninterferable,distance=..6] run function asset:artifact/0606.traffic_sign/attack_melee/3.1.vfx

# カウントを増やす
# 一定時間内に攻撃しないとカウントは増えない
    execute unless score @s GU.Count matches -2147483648..2147483647 run scoreboard players set @s GU.Count 0
    execute store result score $GU.Temp Temporary run time query gametime
    scoreboard players operation $GU.Temp Temporary -= $GU.LatestUseTick Temporary
    execute unless score $GU.Temp Temporary matches ..50 run scoreboard players set @s GU.Count 0
    scoreboard players add @s GU.Count 1

# カウントが4以上なら道路標識を召喚する
    execute if score @s GU.Count matches 4.. at @e[type=#lib:living,tag=Victim,tag=!Uninterferable,distance=..6] run function asset:artifact/0606.traffic_sign/attack_melee/3.2.sign_summon

# ダメージ
    execute store result storage lib: Argument.Damage float 1 run random value 300..500
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "None"
    function lib:damage/modifier
    execute as @e[type=#lib:living,tag=Victim,tag=!Uninterferable,distance=..6] run function lib:damage/

# 鈍足
    # execute as @e[type=#lib:living,tag=Victim,tag=!Uninterferable,distance=..6] run effect give @s slowness 10 0 true

# スコアとかストレージとかリセット
    function lib:damage/reset
    scoreboard players reset $GU.Temp Temporary

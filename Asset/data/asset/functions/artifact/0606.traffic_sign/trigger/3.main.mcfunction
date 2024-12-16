#> asset:artifact/0606.traffic_sign/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0606.traffic_sign/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 演出
    execute at @e[type=#lib:living,tag=Victim,tag=!Uninterferable,distance=..6] run function asset:artifact/0606.traffic_sign/trigger/3.1.vfx

# カウントを増やす
# 一定時間内に攻撃しないとカウントは増えない
    execute unless score @s GU.Count matches -2147483648..2147483647 run scoreboard players set @s GU.Count 0
    execute store result score $GU.Temp Temporary run time query gametime
    scoreboard players operation $GU.Temp Temporary -= $GU.LatestUseTick Temporary
    execute unless score $GU.Temp Temporary matches ..30 run scoreboard players set @s GU.Count 0
    scoreboard players add @s GU.Count 1

# カウントが4以上なら道路標識を召喚する
    execute if score @s GU.Count matches 4.. at @e[type=#lib:living,tag=Victim,tag=!Uninterferable,distance=..6] run function asset:artifact/0606.traffic_sign/trigger/3.2.sign_summon

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

#> asset:artifact/1033.thelema_of_blue_sea/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1033.thelema_of_blue_sea/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

#> Private
# @private
    #declare score_holder $Damage
    #declare score_holder $WaitingTime

# デバッグ用
    #scoreboard players set @s SP.AttackCount 1

# 次の段階までの待機時間のスコア
# 差が60tick以上ならAttackCountをリセットする
    execute store result score $WaitingTime Temporary run time query gametime
    scoreboard players operation $WaitingTime Temporary -= @s SP.LatestUseTick
    execute if score $WaitingTime Temporary matches 60.. run scoreboard players reset @s SP.AttackCount
    scoreboard players reset $WaitingTime Temporary

# 使用tickをスコアで残しておく
    execute store result score @s SP.LatestUseTick run time query gametime

# 演出用オブジェクトを召喚
    data modify storage api: Argument.ID set value 1038
    execute store result storage api: Argument.FieldOverride.Count int 1 run scoreboard players add @s SP.AttackCount 1
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    execute anchored eyes positioned ^ ^-0.3 ^2 run function api:object/summon

# 3回目の攻撃の時、追撃用オブジェクトを召喚
    execute if entity @s[scores={SP.AttackCount=3}] run function asset:artifact/1033.thelema_of_blue_sea/trigger/4.persuit

# ダメージ 基礎火力+現在体力の100%
    function api:data_get/health
    execute store result score $Damage Temporary run data get storage api: Health 1.0
    scoreboard players operation $Damage Temporary < $200 Const
    execute store result storage api: Argument.Damage int 1.0 run scoreboard players add $Damage Temporary 300
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Water"
    function api:damage/modifier
    execute as @e[type=#lib:living,tag=Victim,distance=..6] run function api:damage/
    function api:damage/reset

# 攻撃回数が3ならスコアをリセット
    execute if entity @s[scores={SP.AttackCount=3..}] run scoreboard players reset @s SP.AttackCount

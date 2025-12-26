#> asset:object/1077.brave_slash/hit_entity/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1077/hit_entity

#> private
# @private
    #declare score_holder $UserID

# ダメージ情報設定
    execute store result storage api: Argument.Damage float 1 run random value 100..120
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    data modify storage api: Argument.AdditionalMPHeal set from storage asset:context this.AdditionalMPHeal
# modifier
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = $UserID Temporary run function api:damage/modifier
# ダメージ実行
    execute positioned ~-0.75 ~-0.75 ~-0.75 as @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,dx=0.5,dy=0.5,dz=0.5] run function asset:object/1077.brave_slash/hit_entity/damage

# リセット
    function api:damage/reset
    scoreboard players reset $UserID Temporary

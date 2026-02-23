#> asset:object/1130.thunder_stiletto/hit_entity/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1130/hit_entity

#> Private
# @private
    #declare score_holder $UserID

# UserID取得
    execute store result score $UserID Temporary run data get storage asset:context this.UserID

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Thunder"
    data modify storage api: Argument.AdditionalMPHeal set from storage asset:context this.AdditionalMPHeal
    execute as @a if score @s UserID = $UserID Temporary run function api:damage/modifier
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#lib:living_without_player,tag=!Uninterferable,dx=0,limit=1] run function api:damage/
    function api:damage/reset

# JumpBoost:trueなら跳躍力上昇を付与
    execute if data storage asset:context this{JumpBoost:true} as @a if score @s UserID = $UserID Temporary run function asset:object/1130.thunder_stiletto/hit_entity/jump_boost

# リセット
    scoreboard players reset $UserID Temporary

# 消滅
    function asset:object/call.m {method:"kill"}

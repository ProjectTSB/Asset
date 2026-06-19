#> asset:effect/0375.charge_of_thunderflash/re-given/
#
# Effectが上書きされた時の処理
#
# @within function asset:effect/0375.charge_of_thunderflash/_/re-given

#> Private
# @private
    #declare score_holder $Charge
    #declare score_holder $Require

# PreviousField引継ぎ
    data modify storage asset:context this set from storage asset:context PreviousField

# 既に最大値までチャージしたならreturn
    execute if data storage asset:context this{IsMaxCharge:true} run return fail

# チャージ+1
    execute store result score $Charge Temporary run data get storage asset:context this.Charge
    scoreboard players add $Charge Temporary 1

# チャージが最大値以上なら最大判定にする
    execute store result score $Require Temporary run data get storage asset:context this.RequireChargeTick
    execute if score $Charge Temporary >= $Require Temporary run data modify storage asset:context this.IsMaxCharge set value true

# 最大チャージになったならplaysound
    execute if data storage asset:context this{IsMaxCharge:true} run playsound minecraft:entity.experience_orb.pickup player @a ~ ~ ~ 1 2

# フィールドにチャージを戻す
    execute store result storage asset:context this.Charge int 1 run scoreboard players get $Charge Temporary

# リセット
    scoreboard players reset $Charge Temporary
    scoreboard players reset $Require Temporary

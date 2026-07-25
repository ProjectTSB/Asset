#> asset:effect/0374.charge_plasma/re-given/
#
# Effectが上書きされた時の処理
#
# @within function asset:effect/0374.charge_plasma/_/re-given

#> Private
# @private
    #declare score_holder $Charge
    #declare score_holder $MP

# Field引き継ぎ
    execute if data storage asset:context PreviousField.DamagePool run data modify storage asset:context this.DamagePool set from storage asset:context PreviousField.DamagePool
    execute if data storage asset:context PreviousField.AdditionalMPHeal run data modify storage asset:context this.AdditionalMPHeal set from storage asset:context PreviousField.AdditionalMPHeal
    execute if data storage asset:context PreviousField.AttackType run data modify storage asset:context this.AttackType set from storage asset:context PreviousField.AttackType
    execute if data storage asset:context PreviousField.ElementType run data modify storage asset:context this.ElementType set from storage asset:context PreviousField.ElementType

# チャージ時間を取得
    execute store result score $Charge Temporary run data get storage asset:context PreviousField.Charge

# MPを取得
    function api:mp/get_current
    execute store result score $MP Temporary run data get storage api: Return.CurrentMP

# Field.Chargeを+1
    execute store result storage asset:context this.Charge int 1 run scoreboard players add $Charge Temporary 1

# 時間に応じてバフをスタック
    execute if data storage asset:context {Stack:1} if score $Charge Temporary matches 25.. if score $MP Temporary matches 25.. run function asset:effect/0374.charge_plasma/re-given/charge/2
    execute if data storage asset:context {Stack:2} if score $Charge Temporary matches 50.. if score $MP Temporary matches 35.. run function asset:effect/0374.charge_plasma/re-given/charge/3

# リセット
    scoreboard players reset $Charge
    scoreboard players reset $MP

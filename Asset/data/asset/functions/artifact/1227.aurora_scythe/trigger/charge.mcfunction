#> asset:artifact/1227.aurora_scythe/trigger/charge
#
#
#
# @within function asset:artifact/1227.aurora_scythe/trigger/2.check_condition

#> Private
# @private
    #declare score_holder $Charge

# ダメージとMP回復のデータ
    data modify storage api: Argument.FieldOverride.Damage set from storage api: Return.Effect.Field.Damage
    data modify storage api: Argument.FieldOverride.AdditionalMPHeal set from storage api: Return.Effect.Field.AdditionalMPHeal

# チャージ段階を取得し、+1して再度付与
    execute store result score $Charge Temporary run data get storage api: Return.Effect.Field.Charge
    execute store result storage api: Argument.FieldOverride.Charge int 1 run scoreboard players add $Charge Temporary 1

# チャージ段階に比例してplaysoundとスタックを変える
    execute if score $Charge Temporary matches 12 run playsound entity.evoker.prepare_summon player @a ~ ~ ~ 0.5 1.6
    execute if score $Charge Temporary matches 12 run data modify storage api: Argument.Stack set value 2
    execute if score $Charge Temporary matches 24 run playsound entity.evoker.prepare_summon player @a ~ ~ ~ 0.6 1.8
    execute if score $Charge Temporary matches 24 run data modify storage api: Argument.Stack set value 3

# チャージ用Effectを付与
    data modify storage api: Argument.ID set value 315
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# リセット
    scoreboard players reset $Charge Temporary

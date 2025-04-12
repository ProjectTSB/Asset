#> asset:artifact/0224.onegai_muscle/trigger/2.check_condition/charge
#
#
#
# @within function asset:artifact/0224.onegai_muscle/trigger/2.check_condition

#> Private
# @private
    #declare score_holder $Charge

# 演出
    particle minecraft:trial_spawner_detection ~ ~ ~ 1 0.4 1 0 1

# チャージ用エフェクトを検知
    data modify storage api: Argument.ID set value 332
    function api:entity/mob/effect/get/from_id

# チャージの数値を取得
    execute store result score $Charge Temporary run data get storage api: Return.Effect.Field.Charge

# 初期化
    execute unless score $Charge Temporary matches -2147483648..2147483647 run scoreboard players set $Charge Temporary 0

# チャージが20以上でなければCanUsedを削除
    execute if score $Charge Temporary matches ..20 run tag @s remove CanUsed

# チャージ用エフェクトをgive
    data modify storage api: Argument.ID set value 332
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# リセット
    scoreboard players reset $Charge Temporary

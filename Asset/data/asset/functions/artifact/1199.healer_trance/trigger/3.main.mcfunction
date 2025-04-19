#> asset:artifact/1199.healer_trance/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1199.healer_trance/trigger/2.check_condition

#> Private
# @private
    #declare score_holder $Temp
    #declare score_holder $Sum

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# VFX
    playsound minecraft:entity.illusioner.prepare_mirror player @a ~ ~ ~ 2 1.2
    playsound minecraft:entity.illusioner.prepare_mirror player @a ~ ~ ~ 2 1.1

# 与回復量と被回復量の合計を計算する
    scoreboard players set $Sum Temporary 0

    function api:modifier/heal/get
    execute store result score $Temp Temporary run data get storage api: Return.Heal 1000
    scoreboard players operation $Sum Temporary += $Temp Temporary

    function api:modifier/receive_heal/get
    execute store result score $Temp Temporary run data get storage api: Return.ReceiveHeal 1000
    scoreboard players operation $Sum Temporary += $Temp Temporary

    scoreboard players remove $Sum Temporary 2000

# バフ
    data modify storage api: Argument.ID set value 308
    execute store result storage api: Argument.Stack int 0.6 run scoreboard players get $Sum Temporary
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# デバフ
    data modify storage api: Argument.ID set value 309
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# リセット
    scoreboard players reset $Sum Temporary
    scoreboard players reset $Temp Temporary

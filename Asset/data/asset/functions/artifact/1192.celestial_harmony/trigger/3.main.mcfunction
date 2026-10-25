#> asset:artifact/1192.celestial_harmony/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1192.celestial_harmony/trigger/2.check_condition

#> Private
# @private
    #declare score_holder $MPPer

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# MP割合を計算
    function api:entity/player/get_mp_per
    execute store result score $MPPer Temporary run data get storage api: Return.MPPer 100

# ダメージ
    data modify storage api: Argument.Damage set value 600f
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Thunder"
    function api:damage/modifier
    execute as @e[type=#lib:living_without_player,tag=Victim,distance=..6,limit=1] run function api:damage/
    function api:damage/reset

# 星を降らせるエフェクトを付与する <=10%: 8, <=20%: 7, <=30%: 6, <=40%: 4, <=50%: 3, >50%: 2 個
    data modify storage api: Argument.ID set value 303
    data modify storage api: Argument.FieldOverride.Damage set value 150
    data modify storage api: Argument.FieldOverride.AdditionalMPHeal set from storage api: PersistentArgument.AdditionalMPHeal
    data modify storage api: Argument.FieldOverride.Interval set value 2
    execute store result storage api: Argument.FieldOverride.AppliedFrom int 1 run scoreboard players get @s UserID

    execute if score $MPPer Temporary matches 00..10 run data modify storage api: Argument.Duration set value 15
    execute if score $MPPer Temporary matches 11..20 run data modify storage api: Argument.Duration set value 13
    execute if score $MPPer Temporary matches 21..30 run data modify storage api: Argument.Duration set value 11
    execute if score $MPPer Temporary matches 31..40 run data modify storage api: Argument.Duration set value 7
    execute if score $MPPer Temporary matches 41..50 run data modify storage api: Argument.Duration set value 5
    execute if score $MPPer Temporary matches 51.. run data modify storage api: Argument.Duration set value 3
    execute as @e[type=#lib:living_without_player,tag=Victim,distance=..6,limit=1] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# リセット
    scoreboard players reset $MPPer Temporary

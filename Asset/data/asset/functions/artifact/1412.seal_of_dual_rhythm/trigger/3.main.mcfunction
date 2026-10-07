#> asset:artifact/1412.seal_of_dual_rhythm/trigger/3.main
#
# @within function asset:artifact/1412.seal_of_dual_rhythm/trigger/2.check_condition

# 軽減バフの付与時に基本的な使用処理を行う
    function asset:artifact/common/use/offhand

# 軽減バフを付与する
    data modify storage api: Argument.ID set value 399
    data modify storage api: Argument.Duration set value 2147483647
    data modify storage api: Argument.FieldOverride set value {Amount:0.1d,BoostAmount:0.2d,BoostDuration:300,Cooldown:1200}
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

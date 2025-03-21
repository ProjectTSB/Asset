#> asset:artifact/1227.aurora_scythe/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1227.aurora_scythe/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 演出
    playsound entity.evoker.prepare_summon player @a ~ ~ ~ 0.5 1.4

# チャージ用Effectを付与
    data modify storage api: Argument.ID set value 315
    data modify storage api: Argument.FieldOverride.Damage set value {Slash1:200,Slash2:300,Slash3:400}
    data modify storage api: Argument.FieldOverride.AdditionalMPHeal set from storage api: PersistentArgument.AdditionalMPHeal
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

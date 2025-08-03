#> asset:artifact/1227.aurora_scythe/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1227.aurora_scythe/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

#> Private
# @private
    #declare score_holder $MPPer

# MP割合を取得
    function api:entity/player/get_mp_per
    execute store result score $MPPer Temporary run data get storage api: Return.MPPer 100

# チャージ用Effectを付与
# MPが40%以下でダメージ1.5倍
    data modify storage api: Argument.ID set value 315
    data modify storage api: Argument.FieldOverride.Damage set value {Slash1:250,Slash2:350,Slash3:450}
    execute if score $MPPer Temporary matches ..30 run data modify storage api: Argument.FieldOverride.Damage set value {Slash1:375,Slash2:525,Slash3:675}
    data modify storage api: Argument.FieldOverride.AdditionalMPHeal set from storage api: PersistentArgument.AdditionalMPHeal
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# リセット
    scoreboard players reset $MPPer Temporary

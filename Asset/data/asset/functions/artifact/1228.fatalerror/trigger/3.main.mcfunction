#> asset:artifact/1228.fatalerror/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1228.fatalerror/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# チャージ用Effectを付与
    data modify storage api: Argument.ID set value 320
    data modify storage api: Argument.FieldOverride.Damage set value {Shot:280,Charge:480}
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

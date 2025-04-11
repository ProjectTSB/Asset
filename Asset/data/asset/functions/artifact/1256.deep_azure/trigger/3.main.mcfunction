#> asset:artifact/1256.deep_azure/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1256.deep_azure/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 演出
    playsound block.conduit.activate player @a ~ ~ ~ 0.7 1.4
    particle dust 0.2 0.2 1 1 ~ ~0.4 ~ 0.25 0.25 0.25 0 15 normal

# チャージ用Effectを付与
    data modify storage api: Argument.ID set value 329
    data modify storage api: Argument.FieldOverride.Damage set value {Slash1:100,Slash2:125,Slash3:150,Slash4:175,Slash5:800}
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

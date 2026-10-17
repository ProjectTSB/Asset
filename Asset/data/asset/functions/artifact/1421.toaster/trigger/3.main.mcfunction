#> asset:artifact/1421.toaster/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1421.toaster/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# パンを1個消費
    clear @s bread 1

# 演出
    playsound minecraft:block.note_block.chime player @a ~ ~ ~ 1 1.8

# チャージ用エフェクト
    data modify storage api: Argument.ID set value 362
    data modify storage api: Argument.FieldOverride.Range set value 40
    data modify storage api: Argument.FieldOverride.Speed set value {Charge1:1,Charge2:2,Charge3:3}
    data modify storage api: Argument.FieldOverride.Damage set value {Charge1:40,Charge2:70,Charge3:120}
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

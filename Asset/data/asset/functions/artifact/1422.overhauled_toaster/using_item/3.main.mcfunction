#> asset:artifact/1422.overhauled_toaster/using_item/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1422.overhauled_toaster/using_item/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# パンを1個消費
    clear @s bread 1

# 演出
    playsound minecraft:block.note_block.chime player @a ~ ~ ~ 1 1.8

# チャージ用エフェクト
    data modify storage api: Argument.ID set value 415
    data modify storage api: Argument.FieldOverride.Range set value 40
    data modify storage api: Argument.FieldOverride.Speed set value [1,1,1,2,2,2,4]
    data modify storage api: Argument.FieldOverride.Damage set value [40,70,120,120,120,120,120]
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

#> asset:artifact/1084.mia_zoru_luc/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1084.mia_zoru_luc/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 演出
    playsound entity.ravager.hurt player @a ~ ~ ~ 1 0.7
    particle block redstone_block ~ ~1.3 ~ 0 0 0 1 20

# エフェクトを付与
    data modify storage api: Argument.ID set value 295
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

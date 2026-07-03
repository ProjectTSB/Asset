#> asset:artifact/1117.ghost_marshmallow/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1117.ghost_marshmallow/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 演出
    particle soul ~ ~1.2 ~ 1 0.5 1 0 60 normal @a
    playsound minecraft:block.sculk_shrieker.shriek player @a ~ ~ ~ 0.4 1.6

# MP回復
    data modify storage api: Argument.Fluctuation set value 30
    function api:mp/fluctuation

# エフェクトを付与
    data modify storage api: Argument.ID set value 271
    data modify storage api: Argument.Duration set value 300
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

#> asset:artifact/1143.achilles/damage_entity/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1143.achilles/damage_entity/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/legs

# 演出
    particle block nether_wart_block ~ ~0.2 ~ 0.2 0.1 0.2 0 10 normal @a[distance=..15]
    playsound entity.generic.hurt player @a[distance=..15] ~ ~0.2 ~ 0.7 0.2

# デバフを付与
    data modify storage api: Argument.ID set value 299
    data modify storage api: Argument.Duration set value 400
    data modify storage api: Argument.FieldOverride.Modifier set value {Defense:-0.50d,Speed:-0.50d}
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

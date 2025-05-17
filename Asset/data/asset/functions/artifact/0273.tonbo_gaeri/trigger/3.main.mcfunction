#> asset:artifact/0273.tonbo_gaeri/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0273.tonbo_gaeri/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く


# 移動前の地点にパーティクルと音を残す
    function asset:artifact/0273.tonbo_gaeri/trigger/3.1.warp_effect

# ぶん殴ったやつに物理、無属性のダメージをぶちかます
    data modify storage api: Argument.Damage set value 555.0f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    function api:damage/modifier
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..150] run function api:damage/
# リセット
    function api:damage/reset

# 落下ダメージ無効化
    data modify storage api: Argument set value {ID:190,Duration:60}
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# 初期島に行くぞ！
    execute in minecraft:overworld run tp @s 23 3 24

# 移動前の地点にパーティクルと音を残す
    execute at @s run function asset:artifact/0273.tonbo_gaeri/trigger/3.1.warp_effect

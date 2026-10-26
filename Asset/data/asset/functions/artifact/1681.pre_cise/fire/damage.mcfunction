#> asset:artifact/1681.pre_cise/fire/damage
#
# 弾が当たった敵にダメージを与える
#
# @input as 敵 at 敵
# @within function asset:artifact/1681.pre_cise/fire/bullet

# 演出
    particle electric_spark ~ ~1 ~ 0.3 0.3 0.3 0.2 10

# ダメージ設定
    data modify storage api: Argument.Damage set value 150d
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Thunder"

# ダメージ (攻撃者は発射したプレイヤー)
    execute as @p[tag=this,distance=..32] run function api:damage/modifier
    function api:damage/

# リセット
    function api:damage/reset

# 敵に鈍足 (Lv3 1秒) を付与
    effect give @s minecraft:slowness 1 2 true

# 自身に鈍足Effect (スタック10 1秒) を付与
    data modify storage api: Argument.ID set value 117
    data modify storage api: Argument.Duration set value 20
    data modify storage api: Argument.Stack set value 10
    execute as @p[tag=this,distance=..32] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

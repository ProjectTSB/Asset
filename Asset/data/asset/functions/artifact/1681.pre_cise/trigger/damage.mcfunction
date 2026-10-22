#> asset:artifact/1681.pre_cise/trigger/damage
#
# 弾が当たった敵にダメージを与える
#
# @input as 敵 at 敵
# @within function asset:artifact/1681.pre_cise/trigger/bullet

# 演出
    particle block redstone_block ~ ~1 ~ 0.3 0.3 0.3 0 20

# ダメージ設定
    data modify storage api: Argument.Damage set value 600.0f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"

# ダメージ (攻撃者は発射したプレイヤー)
    execute as @p[tag=this,distance=..32] run function api:damage/modifier
    function api:damage/

# リセット
    function api:damage/reset

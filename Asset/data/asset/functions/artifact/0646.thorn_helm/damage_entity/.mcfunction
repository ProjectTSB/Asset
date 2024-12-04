#> asset:artifact/0646.thorn_helm/damage_entity/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/646/damage_entity/

# 演出
    # 相手に赤いパーティクル
        execute at @e[type=#lib:living,tag=Attacker,distance=..50] run particle falling_dust redstone_block ~ ~1.2 ~ 0.5 0.5 0.5 0 20 normal @a

    # 再帰使用：相手に棘を伸ばす演出
        execute positioned ~ ~1.5 ~ facing entity @e[type=#lib:living,tag=Attacker,distance=..50] eyes run function asset:artifact/0646.thorn_helm/damage_entity/extend_thorn

# 被ダメージ時体力回復
    data modify storage api: Argument.Heal set value 5.0f
    function api:heal/modifier
    function api:heal/
    function api:heal/reset

# 被ダメージ時攻撃者にダメージ
    data modify storage api: Argument.Damage set value 75.0f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.DamageType set value "Projectile"
    function api:damage/modifier
    execute as @e[type=#lib:living,type=!player,tag=Attacker,distance=..50] run function api:damage/
    function api:damage/reset

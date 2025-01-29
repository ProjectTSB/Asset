#> asset:artifact/0441.awaited_opportunity/attack_melee/3.3.attack
#
# 破壊っわす
#
# @within function asset:artifact/0441.awaited_opportunity/attack_melee/

# 演出
    particle minecraft:block redstone_block ~ ~1 ~ 0.1 0.1 0.1 1 10

# ダメージを与える
    # 与えるダメージ
        data modify storage api: Argument.Damage set value 9.0f
    # 第一属性
        data modify storage api: Argument.AttackType set value "Physical"
# 補正function
    execute as @p[tag=this] run function api:damage/modifier
# 対象に
    function api:damage/
# リセット
    function api:damage/reset

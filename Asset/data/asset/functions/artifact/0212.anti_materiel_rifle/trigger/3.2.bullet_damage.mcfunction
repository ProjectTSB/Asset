#> asset:artifact/0212.anti_materiel_rifle/trigger/3.2.bullet_damage
#
# 神器のメイン処理部
#
# @within
#   function asset:artifact/0212.anti_materiel_rifle/trigger/3.1.bullet

# 演出
    particle minecraft:block redstone_block ~ ~1.2 ~ 0.4 0.4 0.4 0 99

# ダメージ設定
    # 与えるダメージ
        data modify storage api: Argument.Damage set value 2600.0f
    # 第一属性
        data modify storage api: Argument.AttackType set value "Physical"
    # ダメージ
        execute as @p[tag=this] run function api:damage/modifier
        function api:damage/
# リセット
    function api:damage/reset

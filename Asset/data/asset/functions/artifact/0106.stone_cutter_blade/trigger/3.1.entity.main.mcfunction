#> asset:artifact/0106.stone_cutter_blade/trigger/3.1.entity.main
#
# 攻撃先のエンティティに対する処理
#
# @within function asset:artifact/0106.stone_cutter_blade/trigger/3.main

# 演出など
    particle block redstone_block ~ ~1 ~ 0.1 0 0.1 4.2 80
    playsound minecraft:item.totem.use player @a ~ ~ ~ 1 2
    playsound minecraft:entity.blaze.hurt player @a ~ ~ ~ 0.2 0.1

# ダメージ処理
    # 引数の設定
    # 与えるダメージ: 160
        data modify storage api: Argument.Damage set value 160.0f
    # 第一属性
        data modify storage api: Argument.AttackType set value "Physical"
# 補正
    execute as @p[tag=this,distance=..15] run function api:damage/modifier
# 実行
    function api:damage/
# 開放
    function api:damage/reset

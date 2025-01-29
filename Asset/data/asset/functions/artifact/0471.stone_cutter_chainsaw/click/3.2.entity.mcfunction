#> asset:artifact/0471.stone_cutter_chainsaw/click/3.2.entity
#
# 攻撃先のエンティティに対する処理
#
# @within function asset:artifact/0471.stone_cutter_chainsaw/click/

# 演出など
    particle block red_wool ~ ~1 ~ 0.1 0 0.1 1 30
    execute if entity @s[tag=D3.Critical] run particle block redstone_block ~ ~1 ~ 0 0 0 1 50
    playsound entity.blaze.hurt player @a ~ ~ ~ 0.2 0.1
    playsound block.sand.step player @p ~ ~ ~ 1.0 0.8
    execute if entity @s[tag=D3.Critical] run playsound item.totem.use player @p ~ ~ ~ 0.3 2.0

# ダメージ処理
    # 引数の設定
        # 与えるダメージ: 11
            data modify storage api: Argument.Damage set value 10.0f
        # クリティカル時のダメージ: 16
            execute if entity @s[tag=D3.Critical] run data modify storage api: Argument.Damage set value 21.0f
        # 第一属性
            data modify storage api: Argument.AttackType set value "Physical"
    # 補正
        execute as @p[tag=this,distance=..5] run function api:damage/modifier
    # 実行
        function api:damage/
    # 開放
        function api:damage/reset

# タグの開放
    tag @s remove D3.Critical

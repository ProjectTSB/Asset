#> asset:artifact/1070.blood_eater/damage/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/1070/damage/


# particle
    particle landing_lava ~ ~1 ~ 0.1 0.5 0.1 0 100
    particle block redstone_block ~ ~1 ~ 0 0 0 1 20

# 音
    playsound minecraft:entity.blaze.death player @a ~ ~ ~ 1 1
    playsound minecraft:entity.breeze.death player @a ~ ~ ~ 1 1

# 自身に5の防御貫通ダメージを与える
    # ダメージ量
        data modify storage lib: Argument.Damage set value 5.0f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 補正をしない
        data modify storage lib: Argument.FixedDamage set value true
    # 死亡メッセージ
        data modify storage lib: Argument.DeathMessage set value ['[{"translate": "%1$sは血を喰らう恐怖に殺された。","with":[{"selector":"@s"}]}]']
    # ダメージ
        function lib:damage/modifier
        execute as @s[tag=!PlayerShouldInvulnerable] run function lib:damage/
# リセット
    function lib:damage/reset

# エフェクトを付与
    data modify storage api: Argument.ID set value 219
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

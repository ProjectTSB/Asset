#> asset:artifact/1070.blood_eater/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1070.blood_eater/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/hotbar

# ここから先は神器側の効果の処理を書く

# particle
    particle landing_lava ~ ~1 ~ 0.1 0.5 0.1 0 100
    particle block redstone_block ~ ~1 ~ 0 0 0 1 20

# 音
    playsound minecraft:entity.blaze.death player @a ~ ~ ~ 1 1
    playsound minecraft:entity.breeze.death player @a ~ ~ ~ 1 1

# 自身に5の防御貫通ダメージを与える
    # ダメージ量
        data modify storage api: Argument.Damage set value 5.0f
    # 第一属性
        data modify storage api: Argument.AttackType set value "Physical"
    # 補正をしない
        data modify storage api: Argument.FixedDamage set value true
    # 死亡メッセージ
        data modify storage api: Argument.DeathMessage set value ['[{"translate": "%1$sは血を喰らう恐怖に殺された。","with":[{"selector":"@s"}]}]']
    # ダメージ
        function api:damage/modifier
        execute as @s[tag=!PlayerShouldInvulnerable] run function api:damage/
# リセット
    function api:damage/reset

# エフェクトを付与
    data modify storage api: Argument.ID set value 219
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

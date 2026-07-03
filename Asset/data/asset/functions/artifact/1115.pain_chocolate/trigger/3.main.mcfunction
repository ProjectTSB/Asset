#> asset:artifact/1115.pain_chocolate/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1115.pain_chocolate/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 演出
    particle damage_indicator ~ ~1.2 ~ 0.5 0.2 0.5 0 5 normal @a
    execute anchored eyes positioned ^ ^-0.2 ^ run particle block redstone_block ~ ~ ~ 0 0 0 0 20 normal @a
    execute anchored eyes positioned ^ ^-0.2 ^ run particle block dark_oak_trapdoor ~ ~ ~ 0 0 0 0 20 normal @a

# 自分に固定5ダメージ
    data modify storage api: Argument.Damage set value 5.0f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.FixedDamage set value true
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは虫歯が急激に進行した","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは歯が砕け散った","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sはチョコが突き刺さった","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    function api:damage/modifier
    function api:damage/
    function api:damage/reset

# エフェクトを付与する
    data modify storage api: Argument.ID set value 269
    data modify storage api: Argument.Duration set value 400
    data modify storage api: Argument.FieldOverride.MPModifier set value 0.05
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

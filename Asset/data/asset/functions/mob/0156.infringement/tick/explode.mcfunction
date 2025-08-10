#> asset:mob/0156.infringement/tick/explode
#
# 自爆する
#
# @within function asset:mob/0156.infringement/tick/

# 周囲のプレイヤーがサバイバルなら周囲の羊毛を全部砂利にする
    execute if entity @p[gamemode=survival,distance=..40] run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 gravel replace #wool

# 周囲のプレイヤーをスタンさせる
    execute positioned ~ ~0.3 ~ run function asset:mob/0156.infringement/tick/vfx

# 演出
    particle explosion_emitter ~ ~ ~ 0 0 0 1 2
    playsound entity.generic.explode hostile @a ~ ~ ~

# ダメージ
    data modify storage api: Argument.Damage set value 50f
    execute if predicate api:global_vars/difficulty/min/3_blessless run data modify storage api: Argument.Damage set value 65f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Water"
    data modify storage api: Argument.DeathMessage append value '{"translate": "%1$sは%2$sに存在を侵害された","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}'
    data modify storage api: Argument.DeathMessage append value '{"translate": "%1$sは%2$sに生命を侵害された","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}'
    function api:damage/modifier
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..5] run function api:damage/
    function api:damage/reset

# ノーマル以上で侵害エフェクトを付与
    execute if predicate api:global_vars/difficulty/min/2_hard run function asset:mob/0156.infringement/tick/debuff

# 自滅する
# ノーマル以下でkill @s ハードで奈落
    execute if predicate api:global_vars/difficulty/max/2_hard run function api:mob/kill
    execute if predicate api:global_vars/difficulty/min/3_blessless run function api:mob/remove

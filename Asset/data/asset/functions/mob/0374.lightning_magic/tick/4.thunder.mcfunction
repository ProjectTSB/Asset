#> asset:mob/0374.lightning_magic/tick/4.thunder
#
# 雷を落とす
#
# @within function asset:mob/0374.lightning_magic/tick/3.on_ground

# 演出
    function asset:mob/0374.lightning_magic/tick/vfx/thunder
    execute positioned ~ ~0.2 ~ run function asset:mob/0374.lightning_magic/tick/vfx/circle
    particle dust 0.6 0.6 0.8 1.2 ~ ~3 ~ 0.6 0.05 0.6 0 50 normal @a
    playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 0.3 2 0

# ダメージ
    data modify storage api: Argument.Damage set value 30f
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Thunder"
    function api:damage/modifier
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..1.2] run function api:damage/
    function api:damage/reset

# ノーマル以上でデバフを付与する
    execute if predicate api:global_vars/difficulty/min/normal as @a[tag=!PlayerShouldInvulnerable,distance=..1.2] run function asset:mob/0374.lightning_magic/tick/5.debuff

# ヒット時に消滅
    execute if entity @p[tag=!PlayerShouldInvulnerable,distance=..1.2] run kill @s

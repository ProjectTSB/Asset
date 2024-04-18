#> asset:mob/0332.aurora_missile/tick/5.hit
#
# 着弾時の処理
#
# @within function
#   asset:mob/0332.aurora_missile/tick/3.tick_normal
#   asset:mob/0332.aurora_missile/tick/4.tick_hard

# 演出
    execute if predicate api:global_vars/difficulty/max/normal rotated ~ 0 positioned ~ ~0.3 ~ run function asset:mob/0332.aurora_missile/tick/vfx
    execute if predicate api:global_vars/difficulty/min/hard rotated ~ 0 positioned ~ ~0.3 ~ run function asset:mob/0332.aurora_missile/tick/vfx2
    particle dust_color_transition 0.000 1.000 0.886 2 0 0.235 1 ~ ~1.5 ~ 1.3 1.2 1.3 0 60
    playsound entity.evoker.prepare_summon hostile @a ~ ~ ~ 0.8 1.5 0

# ダメージ
# ハード以上で範囲拡大
    data modify storage lib: Argument.Damage set value 32f
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "Thunder"
    data modify storage lib: Argument.DeathMessage append value '{"translate": "%1$sは%2$sによってオーロラの魔法の中に消えた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}'
    data modify storage lib: Argument.DeathMessage append value '{"translate": "%1$sは%2$sによって空の塵になった","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}'
    function lib:damage/modifier
    execute if predicate api:global_vars/difficulty/max/normal as @a[tag=!PlayerShouldInvulnerable,distance=..2] run function lib:damage/
    execute if predicate api:global_vars/difficulty/min/hard as @a[tag=!PlayerShouldInvulnerable,distance=..3] run function lib:damage/
    function lib:damage/reset

# 各プレイヤーのMPを減らす
# ハード以上で範囲拡大
    execute if predicate api:global_vars/difficulty/max/normal as @a[tag=!PlayerShouldInvulnerable,distance=..2] run function asset:mob/0332.aurora_missile/tick/6.mp_reduce
    execute if predicate api:global_vars/difficulty/min/hard as @a[tag=!PlayerShouldInvulnerable,distance=..3] run function asset:mob/0332.aurora_missile/tick/6.mp_reduce

# 消滅
    kill @s

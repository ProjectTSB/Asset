#> asset:mob/0156.infringement/tick/4.explode
#
#
#
# @within function asset:mob/0156.infringement/tick/2.tick


# 周囲のプレイヤーがサバイバルなら周囲の羊毛を全部砂利にする
    execute if entity @p[gamemode=survival,distance=..40] run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 gravel replace #wool

# 周囲のプレイヤーをスタンさせる
    execute positioned ~ ~0.3 ~ run function asset:mob/0156.infringement/tick/vfx

# 演出
    particle explosion_emitter ~ ~ ~ 0 0 0 1 2
    playsound entity.generic.explode hostile @a ~ ~ ~

# ダメージ
    data modify storage lib: Argument.Damage set value 28f
    execute if predicate api:global_vars/difficulty/min/hard run data modify storage lib: Argument.Damage set value 40f
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "Water"
    function lib:damage/modifier
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..5] run function lib:damage/
    function lib:damage/reset

# ノーマル以上で侵害エフェクトを付与
    execute if predicate api:global_vars/difficulty/min/normal as @a[gamemode=!spectator,distance=..5] run function asset:mob/0156.infringement/tick/5.debuff

# キル
    kill @s
#> asset:mob/0156.infringement/tick/4.explode
#
#
#
# @within function asset:mob/0156.infringement/tick/2.tick


# 周囲のプレイヤーがサバイバルなら周囲の羊毛を全部砂利にする
    execute if entity @p[gamemode=survival,distance=..40] run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 gravel replace #wool

# 周囲のプレイヤーをスタンさせる
    execute positioned ~ ~0.3 ~ run function asset:mob/0156.infringement/tick/vfx
    effect give @a[distance=..5] slowness 3 10

# 演出
    particle explosion_emitter ~ ~ ~ 0 0 0 1 2
    playsound entity.generic.explode hostile @a ~ ~ ~

# ダメージ
    data modify storage lib: Argument.Damage set value 35f
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "Water"
    function lib:damage/modifier
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..5] run function lib:damage/
    function lib:damage/reset

# 侵害エフェクトを付与
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..5] run function asset:mob/0156.infringement/tick/5.debuff

# キル
    kill @s
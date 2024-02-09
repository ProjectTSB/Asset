#> asset:mob/0341.louvert/tick/projectile/soul_quake/3.cast
#
# 発火時処理
#
# @within function asset:mob/0341.louvert/tick/projectile/soul_quake/1.tick

# 演出
    # 追加パーティクル
        particle dust 0.05 1.0 1.0 2 ~ ~1 ~ 0.5 1 0.5 0 75 force @a[distance=..32]
        particle dust 0.05 1.0 1.0 1.5 ~ ~3 ~ 0.3 2 0.3 0 75 force @a[distance=..32]
        particle dust 0.05 1.0 1.0 1 ~ ~6 ~ 0.15 4 0.15 0 75 force @a[distance=..32]
    # 音
        playsound entity.generic.explode hostile @a[distance=..32] ~ ~ ~ 0.4 1.5
        playsound entity.generic.explode hostile @a[distance=..32] ~ ~ ~ 0.4 0.6
        playsound entity.blaze.shoot hostile @a[distance=..32] ~ ~ ~ 1 1.3
        playsound item.trident.thunder hostile @a[distance=..32] ~ ~ ~ 0.35 2
        playsound block.amethyst_block.resonate hostile @a[distance=..32] ~ ~ ~ 1 0.52
        playsound block.amethyst_block.resonate hostile @a[distance=..32] ~ ~ ~ 1 0.51
        playsound block.amethyst_block.resonate hostile @a[distance=..32] ~ ~ ~ 1 0.5
    
# 引数の設定
    # 与えるダメージ
        # ノーマルなら 24f
            execute if predicate api:global_vars/difficulty/max/normal run data modify storage lib: Argument.Damage set value 24.0f
        # ハードなら 32f
            execute if predicate api:global_vars/difficulty/min/hard run data modify storage lib: Argument.Damage set value 32.0f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Fire"
    # デスログ
        data modify storage lib: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sの詠唱した火炎魔法に飲み込まれてしまった","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
# 補正functionを実行
    execute as @e[tag=this,distance=..100] run function lib:damage/modifier
# ダメージを与える
    tag @a[tag=!PlayerShouldInvulnerable,distance=..1.5] add 9H.Landing
    execute positioned ~ ~1 ~ run tag @a[tag=!PlayerShouldInvulnerable,distance=..1.5] add 9H.Landing
    execute positioned ~ ~2 ~ run tag @a[tag=!PlayerShouldInvulnerable,distance=..1.5] add 9H.Landing
    execute as @a[tag=9H.Landing,distance=..16] at @s run function lib:damage/
# リセット
    function lib:damage/reset

# キル
    tag @a[tag=9H.Landing,distance=..16] remove 9H.Landing
    kill @s
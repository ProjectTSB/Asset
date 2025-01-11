#> asset:object/2143.louvert_soul_quake/tick/cast
#
# 発動処理
#
# @within function asset:object/2143.louvert_soul_quake/tick/

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
        data modify storage api: Argument.Damage set value 40.0f
    # 第一属性
        data modify storage api: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage api: Argument.ElementType set value "Fire"
    # デスログ
        data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sの詠唱した火炎魔法に飲み込まれてしまった","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"api:","interpret":true}]}]'
# 補正functionを実行
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
# ダメージを与える
    tag @a[tag=!PlayerShouldInvulnerable,distance=..1.5] add 2143.Landing
    execute positioned ~ ~1 ~ run tag @a[tag=!PlayerShouldInvulnerable,distance=..1.5] add 2143.Landing
    execute positioned ~ ~2 ~ run tag @a[tag=!PlayerShouldInvulnerable,distance=..1.5] add 2143.Landing
    execute as @a[tag=2143.Landing,distance=..16] at @s run function api:damage/
# リセット
    function api:damage/reset

# キル
    tag @a[tag=2143.Landing,distance=..16] remove 2143.Landing
    kill @s

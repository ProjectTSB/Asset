#> asset:object/2170.astro_teleport/tick/teleport
#
# ダメージ
#
# @within function asset:object/2170.astro_teleport/tick/

# 円
    particle end_rod ~-0.0 ~0.0 ~2.5 ~-0.0 ~1000000000.0 ~2.5 0.00000000010 0 force @a[distance=..32]
    particle end_rod ~0.957 ~0.0 ~2.31 ~0.957 ~1000000000.0 ~2.31 0.00000000010 0 force @a[distance=..32]
    particle end_rod ~1.768 ~0.0 ~1.768 ~1.768 ~1000000000.0 ~1.768 0.00000000010 0 force @a[distance=..32]
    particle end_rod ~2.31 ~0.0 ~0.957 ~2.31 ~1000000000.0 ~0.957 0.00000000010 0 force @a[distance=..32]
    particle end_rod ~2.5 ~0.0 ~0.0 ~2.5 ~1000000000.0 ~0.0 0.00000000010 0 force @a[distance=..32]
    particle end_rod ~2.31 ~0.0 ~-0.957 ~2.31 ~1000000000.0 ~-0.957 0.00000000010 0 force @a[distance=..32]
    particle end_rod ~1.768 ~0.0 ~-1.768 ~1.768 ~1000000000.0 ~-1.768 0.00000000010 0 force @a[distance=..32]
    particle end_rod ~0.957 ~0.0 ~-2.31 ~0.957 ~1000000000.0 ~-2.31 0.00000000010 0 force @a[distance=..32]
    particle end_rod ~-0.0 ~0.0 ~-2.5 ~-0.0 ~1000000000.0 ~-2.5 0.00000000010 0 force @a[distance=..32]
    particle end_rod ~-0.957 ~0.0 ~-2.31 ~-0.957 ~1000000000.0 ~-2.31 0.00000000010 0 force @a[distance=..32]
    particle end_rod ~-1.768 ~0.0 ~-1.768 ~-1.768 ~1000000000.0 ~-1.768 0.00000000010 0 force @a[distance=..32]
    particle end_rod ~-2.31 ~0.0 ~-0.957 ~-2.31 ~1000000000.0 ~-0.957 0.00000000010 0 force @a[distance=..32]
    particle end_rod ~-2.5 ~0.0 ~0.0 ~-2.5 ~1000000000.0 ~0.0 0.00000000010 0 force @a[distance=..32]
    particle end_rod ~-2.31 ~0.0 ~0.957 ~-2.31 ~1000000000.0 ~0.957 0.00000000010 0 force @a[distance=..32]
    particle end_rod ~-1.768 ~0.0 ~1.768 ~-1.768 ~1000000000.0 ~1.768 0.00000000010 0 force @a[distance=..32]
    particle end_rod ~-0.957 ~0.0 ~2.31 ~-0.957 ~1000000000.0 ~2.31 0.00000000010 0 force @a[distance=..32]

# 音
    playsound ogg:block.respawn_anchor.set_spawn1 hostile @a[distance=..32] ~ ~ ~ 1 1.4
    playsound entity.wither.shoot hostile @a[distance=..32] ~ ~ ~ 0.9 1.5

# 引数の設定
    # 与えるダメージ
        data modify storage api: Argument.Damage set value 30f
    # 第一属性
        data modify storage api: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage api: Argument.ElementType set value "None"
    # デスログ
        data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sのテレポートに巻き込まれ、次元の狭間に吸い込まれてしまった","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
# 補正functionを実行
        data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
        function api:damage/modifier_manual
# ダメージを与える
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..2.5] at @s run function api:damage/
# リセット
    function api:damage/reset

# テレポート
    execute store result score $2170.Temp Temporary run data get storage asset:context this.MobUUID
    execute as @e[type=skeleton,scores={MobID=417},distance=..128] if score @s MobUUID = $2170.Temp Temporary run tp @s ^ ^ ^ ~ ~
    scoreboard players reset $2170.Temp Temporary

# キル
    kill @s

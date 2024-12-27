#> asset:object/2020.water_wall/tick/cast
#
# 発動
#
# @within function asset:object/2020.water_wall/tick/

# 追加パーティクル
    particle dust 0.32 0.85 1 1.5 ~ ~5 ~ 1 2.5 1 0 50 force @a[distance=..32]
# 音
    playsound entity.generic.explode hostile @a[distance=..32] ~ ~ ~ 0.6 1.5
    playsound entity.player.swim hostile @a[distance=..16] ~ ~ ~ 0.6 1 0
    playsound item.trident.thunder hostile @a[distance=..32] ~ ~ ~ 0.35 2

# 引数の設定
    # 与えるダメージ
        data modify storage api: Argument.Damage set value 45.0f
    # 第一属性
        data modify storage api: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage api: Argument.ElementType set value "Water"
    # デスログ
        data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sの放った水の壁に押しつぶされた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"api:","interpret":true}]}]'
# 補正functionを実行
        data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
        function api:damage/modifier_manual
# ダメージを与える
    execute as @a[gamemode=!creative,distance=..2] run tag @s add 2020.Landing
    execute positioned ~ ~1 ~ as @a[gamemode=!creative,distance=..2] run tag @s add 2020.Landing
    execute positioned ~ ~2 ~ as @a[gamemode=!creative,distance=..2] run tag @s add 2020.Landing
    execute positioned ~ ~3 ~ as @a[gamemode=!creative,distance=..2] run tag @s add 2020.Landing
    execute positioned ~ ~4 ~ as @a[gamemode=!creative,distance=..2] run tag @s add 2020.Landing
    execute positioned ~ ~5 ~ as @a[gamemode=!creative,distance=..2] run tag @s add 2020.Landing
    execute as @a[tag=2020.Landing,distance=..8] at @s run function api:damage/
# リセット
    function api:damage/reset
    tag @a[tag=2020.Landing,distance=..8] remove 2020.Landing

# キル
    kill @s

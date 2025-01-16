#> asset:object/2140.louvert_meteor/tick/cast
#
# 発動処理
#
# @within function asset:object/2140.louvert_meteor/tick/

# vfx
    function asset:object/2140.louvert_meteor/tick/vfx

# 追加パーティクル
    particle dust 100000000 1 0 2 ~ ~1.5 ~ 1 1 1 0 50 force @a[distance=..32]
    particle dust 100000000 2 0 1.5 ~ ~3 ~ 0.75 2 0.75 0 50 force @a[distance=..32]
    particle dust 100000000 2 0 1 ~ ~6 ~ 0.4 4 0.4 0 50 force @a[distance=..32]
# 音
    playsound entity.generic.explode hostile @a[distance=..32] ~ ~ ~ 0.6 1.5
    playsound block.amethyst_block.resonate hostile @a[distance=..32] ~ ~ ~ 1 0.52
    playsound block.amethyst_block.resonate hostile @a[distance=..32] ~ ~ ~ 1 0.51
    playsound block.amethyst_block.resonate hostile @a[distance=..32] ~ ~ ~ 1 0.5
    playsound entity.blaze.shoot hostile @a[distance=..32] ~ ~ ~ 1 1.3
    playsound item.trident.thunder hostile @a[distance=..32] ~ ~ ~ 0.35 2

# 引数の設定
    # 与えるダメージ
        data modify storage api: Argument.Damage set value 40.0f
    # 第一属性
        data modify storage api: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage api: Argument.ElementType set value "Fire"
    # デスログ
        data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sのメテオによって灰にされた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
# 補正functionを実行
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
# ダメージを与える
    execute as @a[gamemode=!creative,distance=..2] at @s run function api:damage/
# リセット
    function api:damage/reset

# キル
    kill @s
    kill @e[type=item_display,tag=2140.Meteor.Display,distance=..0.1,limit=1]

#> asset:object/2028.lastboss_meteor/hit_block/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/2028/hit_block

# パーティクル
    particle minecraft:explosion_emitter ~ ~ ~ 0.1 0.1 0.1 1 1 force @a[distance=..30]
    particle minecraft:large_smoke ~ ~ ~ 0.1 0.1 0.1 0.4 30 force @a[distance=..30]

# サウンド
    playsound minecraft:entity.lightning_bolt.impact hostile @a ~ ~ ~ 2 0
    playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 2 0.5
    playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 2 1

# ダメージ設定
    # 与えるダメージ
        data modify storage api: Argument.Damage set value 75.0f
    # 魔法属性
        data modify storage api: Argument.AttackType set value "Magic"
    # 火属性
        data modify storage api: Argument.ElementType set value "Fire"
    # ダメージ
        data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
        function api:damage/modifier_manual
        execute as @a[tag=!PlayerShouldInvulnerable,distance=..5] at @s run function api:damage/
# リセット
    function api:damage/reset

# 最寄りの着弾地点マーカーを消す
    kill @e[type=item_display,scores={ObjectID=2029},sort=nearest,limit=1]

# 終了
    kill @s

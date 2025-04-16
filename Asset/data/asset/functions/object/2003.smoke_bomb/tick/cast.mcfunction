#> asset:object/2003.smoke_bomb/tick/cast
#
# 発動処理
#
# @within function asset:object/2003.smoke_bomb/tick/

# 追加パーティクル
    particle dust 1.0 0.4775 0.05 2 ~ ~1 ~ 2 0.5 2 0 50 force @a[distance=..32]
    particle gust_emitter ~ ~0.25 ~ 0.5 0.5 0.5 0 3 force @a[distance=..32]

# 音
    playsound entity.generic.explode hostile @a[distance=..32] ~ ~ ~ 1 1.5
    playsound entity.generic.explode hostile @a[distance=..32] ~ ~ ~ 1 0.9
    playsound entity.generic.explode hostile @a[distance=..32] ~ ~ ~ 1 0.6
    playsound entity.breeze.shoot hostile @a[distance=..32] ~ ~ ~ 1 1
    playsound entity.breeze.shoot hostile @a[distance=..32] ~ ~ ~ 1 1.01
    playsound item.trident.thunder hostile @a[distance=..32] ~ ~ ~ 0.7 2
    playsound entity.wither.shoot hostile @a[distance=..32] ~ ~ ~ 0.9 1.5


#> score_holder
# @private
    #declare score_holder $DamageTemp

# 難易度値を取得
    function api:global_vars/get_difficulty

# ダメージ式：5N + 50
# Nは難易度値を示します
    execute store result score $DamageTemp Temporary run data get storage api: Return.Difficulty 15
    scoreboard players add $DamageTemp Temporary 50

# ダメージ
    # 引数の設定
    # 与えるダメージ
        execute store result storage api: Argument.Damage int 1 run scoreboard players get $DamageTemp Temporary
    # 第一属性
        data modify storage api: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage api: Argument.ElementType set value "Thunder"
    # 難易度補正削除
        data modify storage api: Argument.BypassDifficulty set value true
    # デスログ
        data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sはスモークボムによって目の前が真っ暗になった","with":[{"selector":"@s"}]}]'
# 補正functionを実行
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
# ダメージを与える
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..3] at @s run function api:damage/
# リセット
    function api:damage/reset

# リセット
    scoreboard players reset $DamageTemp Temporary

# 暗闇エフェクト付与
    data modify storage api: Argument set value {ID:74,Duration:150}
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..3] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# キル
    kill @s

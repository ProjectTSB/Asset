#> asset:object/2015.axia_shock_wave/tick/cast
#
# 発動処理
#
# @within function asset:object/2015.axia_shock_wave/tick/

# 演出
# 追加パーティクル
    particle dust 0.75 0.0 0.0 3 ~ ~1 ~ 2.5 0.5 2.5 0 20 force @a[distance=..32]
    particle dust 0.75 0.0 0.0 2 ~ ~4 ~ 1.5 2 1.5 0 20 force @a[distance=..32]
    particle dust 0.75 0.0 0.0 1.5 ~ ~8 ~ 1 4 1 0 20 force @a[distance=..32]
# 音
    playsound entity.generic.explode hostile @a[distance=..32] ~ ~ ~ 0.6 1.5
    playsound entity.generic.explode hostile @a[distance=..32] ~ ~ ~ 0.6 0.9
    playsound entity.generic.explode hostile @a[distance=..32] ~ ~ ~ 0.6 0.6
    playsound entity.breeze.shoot hostile @a[distance=..32] ~ ~ ~ 1 0.85
    playsound entity.breeze.shoot hostile @a[distance=..32] ~ ~ ~ 1 0.86
    playsound item.trident.thunder hostile @a[distance=..32] ~ ~ ~ 0.35 2
    playsound entity.wither.shoot hostile @a[distance=..32] ~ ~ ~ 0.45 1.5

# オーバーライドを設定
    data modify storage api: Argument.FieldOverride set value {Item:{id:"minecraft:leather_horse_armor"},Color:16711731,Frames:[20356,20357,20358,20359,20360,20361,20362],Scale:[12f,12f,0.1f],Transformation:{left_rotation:[-0.5f,-0.5f,-0.5f,0.5f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}

# 召喚
    data modify storage api: Argument.ID set value 2001
    execute positioned ^ ^0.2 ^ rotated 0 0 run function api:object/summon


#> score_holder
# @private
    #declare score_holder $DamageTemp

# 難易度値を取得
    function api:global_vars/get_difficulty

# ダメージ式：12N + 26
# Nは難易度値を示します
    execute store result score $DamageTemp Temporary run data get storage api: Return.Difficulty 10
    scoreboard players add $DamageTemp Temporary 40

# ダメージ
    # 引数の設定
    # 与えるダメージ
        execute store result storage api: Argument.Damage int 1 run scoreboard players get $DamageTemp Temporary
    # 第一属性
        data modify storage api: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage api: Argument.ElementType set value "Fire"
    # 難易度補正削除
        data modify storage api: Argument.BypassDifficulty set value true
    # デスログ
        data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sの放った衝撃波によって全身を粉砕された","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
# 補正functionを実行
        data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
        function api:damage/modifier_manual
# ダメージを与える
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..3.5] at @s run function api:damage/
# リセット
    function api:damage/reset

# リセット
    scoreboard players reset $DamageTemp Temporary

# キル
    kill @s

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


#> score_holder
# @private
    #declare score_holder $DamageTemp

# 難易度値を取得
    function api:global_vars/get_difficulty

# ダメージ式：難易度数値 × 補正値 + 基礎
# Nは難易度値を示します
    execute store result score $DamageTemp Temporary run data get storage api: Return.Difficulty 15
    scoreboard players add $DamageTemp Temporary 32

# ダメージ
    # 引数の設定
    # 与えるダメージ
        execute store result storage api: Argument.Damage int 1 run scoreboard players get $DamageTemp Temporary
    # 第一属性
        data modify storage api: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage api: Argument.ElementType set value "Water"
    # 難易度補正削除
        data modify storage api: Argument.BypassDifficulty set value true
    # デスログ
        data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sの放った水の壁に押しつぶされた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
# 補正functionを実行
        data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
        function api:damage/modifier_manual
# ダメージを与える
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..2] run tag @s add 2020.Landing
    execute positioned ~ ~1 ~ as @a[tag=!PlayerShouldInvulnerable,distance=..2] run tag @s add 2020.Landing
    execute positioned ~ ~2 ~ as @a[tag=!PlayerShouldInvulnerable,distance=..2] run tag @s add 2020.Landing
    execute positioned ~ ~3 ~ as @a[tag=!PlayerShouldInvulnerable,distance=..2] run tag @s add 2020.Landing
    execute positioned ~ ~4 ~ as @a[tag=!PlayerShouldInvulnerable,distance=..2] run tag @s add 2020.Landing
    execute positioned ~ ~5 ~ as @a[tag=!PlayerShouldInvulnerable,distance=..2] run tag @s add 2020.Landing
    execute as @a[tag=2020.Landing,distance=..8] at @s run function api:damage/
# リセット
    function api:damage/reset
    tag @a[tag=2020.Landing,distance=..8] remove 2020.Landing
    scoreboard players reset $DamageTemp Temporary

# キル
    kill @s

#> asset:object/2002.lighting_fast/tick/cast
#
# 発動処理
#
# @within function asset:object/2002.lighting_fast/tick/

# 判定内にいるプレイヤーをタグ付け
    execute positioned ^ ^ ^0 positioned ~-1.5 ~-1.5 ~-1.5 as @a[tag=!PlayerShouldInvulnerable,dx=2,dy=2,dz=2] run tag @s add 2002.Landing
    execute positioned ^ ^ ^3 positioned ~-1.5 ~-1.5 ~-1.5 as @a[tag=!PlayerShouldInvulnerable,dx=2,dy=2,dz=2] run tag @s add 2002.Landing
    execute positioned ^ ^ ^6 positioned ~-1.5 ~-1.5 ~-1.5 as @a[tag=!PlayerShouldInvulnerable,dx=2,dy=2,dz=2] run tag @s add 2002.Landing
    execute positioned ^ ^ ^9 positioned ~-1.5 ~-1.5 ~-1.5 as @a[tag=!PlayerShouldInvulnerable,dx=2,dy=2,dz=2] run tag @s add 2002.Landing
    execute positioned ^ ^ ^12 positioned ~-1.5 ~-1.5 ~-1.5 as @a[tag=!PlayerShouldInvulnerable,dx=2,dy=2,dz=2] run tag @s add 2002.Landing
    execute positioned ^ ^ ^15 positioned ~-1.5 ~-1.5 ~-1.5 as @a[tag=!PlayerShouldInvulnerable,dx=2,dy=2,dz=2] run tag @s add 2002.Landing
    execute positioned ^ ^ ^18 positioned ~-1.5 ~-1.5 ~-1.5 as @a[tag=!PlayerShouldInvulnerable,dx=2,dy=2,dz=2] run tag @s add 2002.Landing
    execute positioned ^ ^ ^21 positioned ~-1.5 ~-1.5 ~-1.5 as @a[tag=!PlayerShouldInvulnerable,dx=2,dy=2,dz=2] run tag @s add 2002.Landing
    execute positioned ^ ^ ^24 positioned ~-1.5 ~-1.5 ~-1.5 as @a[tag=!PlayerShouldInvulnerable,dx=2,dy=2,dz=2] run tag @s add 2002.Landing
    execute positioned ^ ^ ^27 positioned ~-1.5 ~-1.5 ~-1.5 as @a[tag=!PlayerShouldInvulnerable,dx=2,dy=2,dz=2] run tag @s add 2002.Landing
    execute positioned ^ ^ ^-3 positioned ~-1.5 ~-1.5 ~-1.5 as @a[tag=!PlayerShouldInvulnerable,dx=2,dy=2,dz=2] run tag @s add 2002.Landing
    execute positioned ^ ^ ^-6 positioned ~-1.5 ~-1.5 ~-1.5 as @a[tag=!PlayerShouldInvulnerable,dx=2,dy=2,dz=2] run tag @s add 2002.Landing
    execute positioned ^ ^ ^-9 positioned ~-1.5 ~-1.5 ~-1.5 as @a[tag=!PlayerShouldInvulnerable,dx=2,dy=2,dz=2] run tag @s add 2002.Landing
    execute positioned ^ ^ ^-12 positioned ~-1.5 ~-1.5 ~-1.5 as @a[tag=!PlayerShouldInvulnerable,dx=2,dy=2,dz=2] run tag @s add 2002.Landing
    execute positioned ^ ^ ^-15 positioned ~-1.5 ~-1.5 ~-1.5 as @a[tag=!PlayerShouldInvulnerable,dx=2,dy=2,dz=2] run tag @s add 2002.Landing
    execute positioned ^ ^ ^-18 positioned ~-1.5 ~-1.5 ~-1.5 as @a[tag=!PlayerShouldInvulnerable,dx=2,dy=2,dz=2] run tag @s add 2002.Landing
    execute positioned ^ ^ ^-21 positioned ~-1.5 ~-1.5 ~-1.5 as @a[tag=!PlayerShouldInvulnerable,dx=2,dy=2,dz=2] run tag @s add 2002.Landing
    execute positioned ^ ^ ^-24 positioned ~-1.5 ~-1.5 ~-1.5 as @a[tag=!PlayerShouldInvulnerable,dx=2,dy=2,dz=2] run tag @s add 2002.Landing
    execute positioned ^ ^ ^-27 positioned ~-1.5 ~-1.5 ~-1.5 as @a[tag=!PlayerShouldInvulnerable,dx=2,dy=2,dz=2] run tag @s add 2002.Landing


#> score_holder
# @private
    #declare score_holder $DamageTemp

# 難易度値を取得
    function api:global_vars/get_difficulty

# ダメージ式：難易度数値 × 補正値 + 基礎
# Nは難易度値を示します
    execute store result score $DamageTemp Temporary run data get storage api: Return.Difficulty 16
    scoreboard players add $DamageTemp Temporary 29

# ダメージ
    # 引数の設定
    # 与えるダメージ
        execute store result storage api: Argument.Damage int 1 run scoreboard players get $DamageTemp Temporary
    # 第一属性
        data modify storage api: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage api: Argument.ElementType set value "Thunder"
    # 難易度補正削除
        data modify storage api: Argument.BypassDifficulty set value true
    # デスログ
        data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sの斬撃によってサイコロステーキになってしまった","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    # 補正functionを実行
        data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
        function api:damage/modifier_manual
    # ダメージを与える
        execute as @a[tag=2002.Landing,distance=..100] at @s run function api:damage/
    # リセット
        function api:damage/reset

# リセット
    scoreboard players reset $DamageTemp Temporary

# タグ外し
    tag @a[tag=2002.Landing,distance=..100] remove 2002.Landing

# パーティクル処理
    execute positioned ^ ^1.5 ^ run function asset:object/2002.lighting_fast/tick/vfx

# キル
    kill @s

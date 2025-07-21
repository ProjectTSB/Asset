#> asset:mob/0341.louvert/tick/animation/5_1_blade_cutter/flame_damage
#
# Flameパーティクル
#
# @within function asset:mob/0341.louvert/tick/animation/5_1_blade_cutter/

# パーティクル
    execute at @e[type=marker,tag=9H.FireBladeLocater,distance=..64] run particle flame ~ ~ ~ 1 1 1 0.01 20 normal
    execute at @e[type=marker,tag=9H.SoulBladeLocater,distance=..64] run particle soul_fire_flame ~ ~ ~ 1 1 1 0.01 20 normal
    playsound item.trident.return hostile @a[distance=..32] ~ ~ ~ 1 0 0
    playsound item.trident.riptide_1 hostile @a[distance=..32] ~ ~ ~ 1 0 0

    scoreboard players operation $9H.Temp 9H.AnimationTick = @s 9H.AnimationTick
    scoreboard players operation $9H.Temp 9H.AnimationTick %= $6 Const

# ソウルクエイク召喚処理
    execute if predicate api:global_vars/difficulty/min/3_blessless if score $9H.Temp 9H.AnimationTick matches 1 run function asset:mob/0341.louvert/tick/animation/5_1_blade_cutter/hard

# ダメージ
    # 引数の設定
    # 与えるダメージ
        data modify storage api: Argument.Damage set value 15.0f
    # 第一属性
        data modify storage api: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage api: Argument.ElementType set value "Fire"
    # デスログ
        data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sの燃える刃に斬り裂かれた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
# 補正functionを実行
    function api:damage/modifier
# ダメージを与える
    execute at @e[type=marker,tag=9H.FireBladeLocater,distance=..64] positioned ~-2 ~-2 ~-2 as @a[tag=!PlayerShouldInvulnerable,dx=4,dy=4,dz=4] at @s run tag @s add 9H.Temp.Target
    execute at @e[type=marker,tag=9H.SoulBladeLocater,distance=..64] positioned ~-2 ~-2 ~-2 as @a[tag=!PlayerShouldInvulnerable,dx=4,dy=4,dz=4] at @s run tag @s add 9H.Temp.Target
    execute as @a[tag=9H.Temp.Target,distance=..100] at @s run function api:damage/
# リセット
    tag @a[distance=..100] remove 9H.Temp.Target
    function api:damage/reset

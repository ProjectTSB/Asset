#> asset:mob/0341.louvert/tick/projectile/fire_magic/3.cast
#
# 火炎陣 発火
#
# @within function asset:mob/0341.louvert/tick/projectile/fire_magic/1.tick

# 演出
    # 演出のためにランダムな方向を向かせる
        execute store result entity @s Rotation[0] float 0.01 run function lib:random/
        execute store result entity @s Rotation[1] float 0.01 run function lib:random/
    # 球体演出
        execute at @s run function asset:mob/0341.louvert/tick/projectile/fire_magic/3.1.cast_vfx
    # 演出のためにランダムな方向を向かせる
        execute store result entity @s Rotation[0] float 0.01 run function lib:random/
        execute store result entity @s Rotation[1] float 0.01 run function lib:random/
    # 球体演出
        execute at @s run function asset:mob/0341.louvert/tick/projectile/fire_magic/3.1.cast_vfx
    # 追加パーティクル
        particle dust 100000000 1 0 2 ~ ~1 ~ 1.5 1.5 0.5 0 100 force @a[distance=..32]
        particle dust 100000000 2 0 1.5 ~ ~3 ~ 1 2 1 0 100 force @a[distance=..32]
        particle dust 100000000 2 0 1 ~ ~6 ~ 0.5 4 0.5 0 100 force @a[distance=..32]
    # 音
        playsound entity.generic.explode hostile @a[distance=..32] ~ ~ ~ 0.4 1.5
        playsound entity.generic.explode hostile @a[distance=..32] ~ ~ ~ 0.4 0.6
        playsound entity.blaze.shoot hostile @a[distance=..32] ~ ~ ~ 1 1.3
        playsound item.trident.thunder hostile @a[distance=..32] ~ ~ ~ 0.35 2
        playsound entity.wither.shoot hostile @a[distance=..32] ~ ~ ~ 0.45 1.5
    
# 引数の設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 42.0f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Fire"
    # デスログ
        data modify storage lib: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sの詠唱した火炎魔法に飲み込まれてしまった","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
# 補正functionを実行
    execute as @e[tag=this,distance=..100] run function lib:damage/modifier
# ダメージを与える
    execute as @a[gamemode=!creative,distance=..3] at @s run function lib:damage/
# リセット
    function lib:damage/reset

# キル
    kill @s
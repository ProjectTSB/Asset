#> asset:mob/0342.louvert_common_fire_magic/tick/3.cast
#
# 発動
#
# @within function asset:mob/0342.louvert_common_fire_magic/tick/2.tick

# 演出
    # 演出のためにランダムな方向を向かせる
        execute store result entity @s Rotation[0] float 0.01 run function lib:random/
        execute store result entity @s Rotation[1] float 0.01 run function lib:random/
    # 球体演出
        execute at @s run function asset:mob/0342.louvert_common_fire_magic/tick/3.1.cast_vfx
    # 演出のためにランダムな方向を向かせる
        execute store result entity @s Rotation[0] float 0.01 run function lib:random/
        execute store result entity @s Rotation[1] float 0.01 run function lib:random/
    # 球体演出
        execute at @s run function asset:mob/0342.louvert_common_fire_magic/tick/3.1.cast_vfx
    # 演出のためにランダムな方向を向かせる
        execute store result entity @s Rotation[0] float 0.01 run function lib:random/
        execute store result entity @s Rotation[1] float 0.01 run function lib:random/
    # 球体演出
        execute at @s run function asset:mob/0342.louvert_common_fire_magic/tick/3.1.cast_vfx
    # 追加パーティクル
        particle dust 100000000 1 0 2 ~ ~1 ~ 1.5 1.5 0.5 0 200 force @a[distance=..32]
        particle dust 100000000 2 0 1.5 ~ ~3 ~ 1 2 1 0 200 force @a[distance=..32]
        particle dust 100000000 2 0 1 ~ ~6 ~ 0.5 4 0.5 0 200 force @a[distance=..32]
    # 音
        playsound entity.generic.explode hostile @a[distance=..32] ~ ~ ~ 0.8 1.5
        playsound entity.generic.explode hostile @a[distance=..32] ~ ~ ~ 0.8 0.8
        playsound entity.blaze.shoot hostile @a[distance=..32] ~ ~ ~ 1.5 1.3
        playsound block.end_portal.spawn hostile @a[distance=..32] ~ ~ ~ 0.25 2
    
# 引数の設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 42.0f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Fire"
# 補正functionを実行
    function lib:damage/modifier
# ダメージを与える
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..3] at @s run function lib:damage/
# リセット
    function lib:damage/reset

# キル
    kill @s
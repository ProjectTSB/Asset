#> asset:mob/0365.frestchika/tick/base_move/skill/cordinate_laser/finisher/
#
# フィニッシャー大爆発
#
# @within function asset:mob/0365.frestchika/tick/base_move/skill/cordinate_laser/

# 演出
    particle end_rod ~ ~5 ~ 0.1 3 0.1 0.05 10
    particle dust 0 0.75 1 0.7 ~ ~5 ~ 0.1 3 0.1 0 150
    particle minecraft:explosion ~ ~ ~ 2 1 2 1 10 force @a[distance=..16]

# 演出
    playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 0.7 1.8
    playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 0.7 2
    playsound entity.lightning_bolt.impact hostile @p ~ ~ ~ 1 0.5 0

# ダメージ設定
    # 与えるダメージ
        data modify storage api: Argument.Damage set value 60.0f
    # 魔法属性
        data modify storage api: Argument.AttackType set value "Magic"
    # 雷属性
        data modify storage api: Argument.ElementType set value "Thunder"
    # ダメージ
        function api:damage/modifier
        execute as @a[tag=!PlayerShouldInvulnerable,distance=..4] run function api:damage/
# リセット
    function api:damage/reset

# 演出
    particle soul_fire_flame ~ ~3 ~ 0.3 3 0.3 0 50
    particle dust 0 0.733 1 1 ~ ~3 ~ 0.3 3 0.3 0 50
    particle dust 0 0.733 1 1 ~ ~5 ~ 0.7 5 0.7 1 250
    particle minecraft:explosion ~ ~ ~ 0.3 0 0.3 0 8
    particle minecraft:large_smoke ~ ~ ~ 0.3 0 0.3 0.4 50

# 当たり判定的な演出
    particle soul_fire_flame ~0 ~0.3 ~-2 0 0 0 0 1
    particle soul_fire_flame ~0.81347 ~0.3 ~-1.82709 0 0 0 0 1
    particle soul_fire_flame ~1.48629 ~0.3 ~-1.33826 0 0 0 0 1
    particle soul_fire_flame ~1.90211 ~0.3 ~-0.61803 0 0 0 0 1
    particle soul_fire_flame ~1.98904 ~0.3 ~0.20906 0 0 0 0 1
    particle soul_fire_flame ~1.73205 ~0.3 ~1 0 0 0 0 1
    particle soul_fire_flame ~1.17557 ~0.3 ~1.61803 0 0 0 0 1
    particle soul_fire_flame ~0.41582 ~0.3 ~1.9563 0 0 0 0 1
    particle soul_fire_flame ~-0.41582 ~0.3 ~1.9563 0 0 0 0 1
    particle soul_fire_flame ~-1.17557 ~0.3 ~1.61803 0 0 0 0 1
    particle soul_fire_flame ~-1.73205 ~0.3 ~1 0 0 0 0 1
    particle soul_fire_flame ~-1.98904 ~0.3 ~0.20906 0 0 0 0 1
    particle soul_fire_flame ~-1.90211 ~0.3 ~-0.61803 0 0 0 0 1
    particle soul_fire_flame ~-1.48629 ~0.3 ~-1.33826 0 0 0 0 1
    particle soul_fire_flame ~-0.81347 ~0.3 ~-1.82709 0 0 0 0 1

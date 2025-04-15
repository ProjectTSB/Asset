#> asset:mob/0365.frestchika/tick/base_move/skill/charge_slash/final_thunder
#
# 居合サンダー
#
# @within function asset:mob/0365.frestchika/tick/base_move/skill/charge_slash/phase2

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage.ChargeSlashThunder
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Thunder"
    function api:damage/modifier
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..3] at @s run function api:damage/
    function api:damage/reset

# サウンド
    playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 0.7 1.8
    playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 0.7 2
    playsound entity.lightning_bolt.impact hostile @p ~ ~ ~ 0.7 0.5 0

# 演出
    particle soul_fire_flame ~ ~2 ~ 0.3 3 0.3 0.01 25
    particle dust 0 0.7 1 2 ~ ~2 ~ 0.1 3 0.1 1 25
    particle dust 0 0.7 1 1 ~ ~2 ~ 0.5 5 0.5 1 100
    particle minecraft:explosion ~ ~ ~ 0.3 0 0.3 1 5
    particle minecraft:large_smoke ~ ~ ~ 0.3 0.1 0.3 0.1 20

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

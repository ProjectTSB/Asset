#> asset:mob/0365.frestchika/tick/base_move/skill/cordinate_laser/finisher/
#
# フィニッシャー大爆発
#
# @within function
#   asset:mob/0365.frestchika/tick/base_move/skill/cordinate_laser/
#   asset:mob/0365.frestchika/tick/base_move/skill/cordinate_laser/phase2

# 演出
    particle end_rod ~ ~5 ~ 0.1 3 0.1 0.05 10
    particle dust 0 0.75 1 0.7 ~ ~5 ~ 0.1 3 0.1 0 150
    particle minecraft:explosion ~ ~ ~ 2 1 2 1 10 force @a[distance=..16]

# 演出
    playsound entity.lightning_bolt.impact hostile @p ~ ~ ~ 1 0.5 0

# ダメージ設定
    # 与えるダメージ
        data modify storage api: Argument.Damage set from storage asset:context this.Damage.SuperCordinateLaser
    # 魔法属性
        data modify storage api: Argument.AttackType set value "Magic"
    # 雷属性
        data modify storage api: Argument.ElementType set value "Thunder"
    # ダメージ
        function api:damage/modifier
        tag @a[tag=!PlayerShouldInvulnerable,distance=..4] add Hit
        execute positioned ~-1.5 ~0 ~-1.5 run tag @a[tag=!PlayerShouldInvulnerable,dx=2,dy=19,dz=2] add Hit
        execute as @a[tag=Hit,distance=..64] run function api:damage/
# リセット
    function api:damage/reset
    tag @a[tag=Hit,distance=..64] remove Hit
# キル
    kill @s

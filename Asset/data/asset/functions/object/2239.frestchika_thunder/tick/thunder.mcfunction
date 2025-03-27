#> asset:object/2239.frestchika_thunder/tick/thunder
#
#
#
# @within function asset:object/2239.frestchika_thunder/tick/

# 演出
    particle end_rod ~ ~5 ~ 0.1 3 0.1 0.05 10
    particle dust 0 0.75 1 0.7 ~ ~5 ~ 0.1 3 0.1 0 150
    particle minecraft:explosion ~ ~ ~ 1 0.5 1 0.5 5

# 演出
    playsound entity.lightning_bolt.impact hostile @p ~ ~ ~ 0.5 0.7 0

# ダメージ設定
    # 与えるダメージ
        data modify storage api: Argument.Damage set from storage asset:context this.Damage
    # 魔法属性
        data modify storage api: Argument.AttackType set value "Magic"
    # 雷属性
        data modify storage api: Argument.ElementType set value "Thunder"
    # ダメージ
        data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
        function api:damage/modifier_manual
        execute as @a[tag=!PlayerShouldInvulnerable,distance=..2] run function api:damage/
# リセット
    function api:damage/reset

# キル
    kill @s

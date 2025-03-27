#> asset:mob/0365.frestchika/tick/base_move/skill/charge_slash/active
#
#
#
# @within function
#   asset:mob/0365.frestchika/tick/base_move/skill/charge_slash/
#   asset:mob/0365.frestchika/tick/base_move/skill/charge_slash/phase2

# ダメージ設定(ダッシュ部分)
    # 与えるダメージ
        data modify storage api: Argument.Damage set from storage asset:context this.Damage.ChargeSlash
    # 属性1
        data modify storage api: Argument.AttackType set value "Physical"
    # 属性2
        data modify storage api: Argument.ElementType set value "Thunder"
    # ダメージ
        function api:damage/modifier
        execute as @a[tag=Hit,distance=..64] run function api:damage/
# リセット
    function api:damage/reset
    tag @a[tag=Hit,distance=..64] remove Hit

# 演出
    playsound minecraft:entity.witch.throw hostile @a ~ ~ ~ 1.2 0.7
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 1.2 0.7
    playsound minecraft:item.axe.scrape hostile @a ~ ~ ~ 1 2
    playsound minecraft:entity.glow_squid.squirt hostile @a ~ ~ ~ 1 1.5

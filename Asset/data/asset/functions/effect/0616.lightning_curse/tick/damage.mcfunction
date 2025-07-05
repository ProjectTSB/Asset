#> asset:effect/0616.lightning_curse/tick/damage
#
# スリップダメージ
#
# @within function asset:effect/0616.lightning_curse/tick/

# 演出
    particle electric_spark ~ ~ ~ 0 0 0 0.5 20 normal @a
    playsound entity.firework_rocket.twinkle player @a ~ ~ ~ 0.4 1.2 0

# 魔法雷属性ダメージ
# modifier_manualを用いて付与したMobが補正を行う
    execute store result storage api: Argument.Damage int 4 run data get storage asset:context Stack
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Thunder"
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
    data modify storage api: Argument.ApplyTrigger set value false
    function api:damage/
    function api:damage/reset

#> asset:effect/0616.lightning_curse/tick/damage
#
# スリップダメージ
#
# @within function asset:effect/0616.lightning_curse/tick/

#> Private
# @private
    #declare score_holder $Damage

# 演出
    particle electric_spark ~ ~ ~ 0 0 0 0.5 20 normal @a
    playsound entity.firework_rocket.twinkle player @a ~ ~ ~ 0.4 1.2 0

# 2(N+1)ダメージ
    execute store result score $Damage Temporary run data get storage asset:context Stack
    scoreboard players add $Damage Temporary 1

# 魔法雷属性ダメージ
# modifier_manualを用いて付与したMobが補正を行う
    execute store result storage api: Argument.Damage int 2 run scoreboard players get $Damage Temporary
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Thunder"
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
    data modify storage api: Argument.ActivateTrigger set value false
    function api:damage/
    function api:damage/reset

# リセット
    scoreboard players reset $Damage Temporary

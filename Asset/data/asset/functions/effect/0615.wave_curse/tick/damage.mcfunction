#> asset:effect/0615.wave_curse/tick/damage
#
# スリップダメージ
#
# @within function asset:effect/0615.wave_curse/tick/

#> Private
# @private
    #declare score_holder $Damage

# 演出
    particle rain ~ ~ ~ 0.2 0.4 0.2 0.1 80 normal @a
    playsound entity.dolphin.splash player @a ~ ~1.2 ~ 0.4 1 0

# 4(N+1)ダメージ
    execute store result score $Damage Temporary run data get storage asset:context Stack
    scoreboard players add $Damage Temporary 1

# 魔法水属性ダメージ
# modifier_manualを用いて付与したMobが補正を行う
    execute store result storage api: Argument.Damage int 4 run scoreboard players get $Damage Temporary
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Water"
    function api:damage/modifier
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
    data modify storage api: Argument.ApplyTrigger set value false
    function api:damage/
    function api:damage/reset

# リセット
    scoreboard players reset $Damage Temporary

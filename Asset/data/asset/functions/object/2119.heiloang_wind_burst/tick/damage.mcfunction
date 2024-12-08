#> asset:object/2119.heiloang_wind_burst/tick/damage
#
# Objectのtick時の処理
#
# @within asset:object/2119.heiloang_wind_burst/tick/

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "None"
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..4] run function api:damage/
    function api:damage/reset

# 演出
    playsound entity.generic.explode hostile @a ~ ~ ~ 2 0.7
    particle gust ~ ~1 ~ 2 2 2 0 20
    particle firework ~ ~1 ~ 0.1 0.1 0.1 0.5 30

# 消去
    kill @s

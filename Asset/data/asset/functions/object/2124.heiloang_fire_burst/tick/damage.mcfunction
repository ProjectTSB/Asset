#> asset:object/2124.heiloang_fire_burst/tick/damage
#
# Objectのtick時の処理
#
# @within asset:object/2124.heiloang_fire_burst/tick/

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Fire"
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..4] run function api:damage/
    function api:damage/reset

# 演出
    playsound entity.generic.explode hostile @a ~ ~ ~ 2 0.7
    particle explosion ~ ~1 ~ 2 2 2 0 20 force
    particle flame ~ ~1 ~ 0.1 0.1 0.1 0.2 30
    particle lava ~ ~1 ~ 0.1 0.1 0.1 0.2 10

# 消去
    kill @s

#> asset:object/2262.gem_panjan_drone/tick/attack
#
# Objectのtick時の処理
#
# @within asset:object/2262.gem_panjan_drone/tick/event_attack

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage.Amount
    data modify storage api: Argument.AttackType set from storage asset:context this.Damage.Type
    data modify storage api: Argument.ElementType set from storage asset:context this.Damage.Element
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..10] run function api:damage/
    function api:damage/reset

# 演出
    particle explosion_emitter ~ ~1 ~ 0 0 0 0 1 force
    particle explosion ~ ~1 ~ 4 4 4 0 30 force
    particle lava ~ ~1 ~ 4 1 4 0.2 10
    playsound entity.generic.explode hostile @a ~ ~ ~ 2 0.8

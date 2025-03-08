#> asset:object/2211.eclael_circle_slash/tick/attack
#
# Objectのtick時の処理
#
# @within asset:object/2211.eclael_circle_slash/tick/

# 演出
    playsound entity.breeze.shoot hostile @a ~ ~ ~ 1 0.8
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 1 0.7
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 1 0.9
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 1 1.2
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 1 1.5

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Thunder"
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..6] run function api:damage/
    function api:damage/reset

# 終了
    tag @a[tag=DXYZ] remove DXYZ

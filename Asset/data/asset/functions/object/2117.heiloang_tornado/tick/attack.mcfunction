#> asset:object/2117.heiloang_tornado/tick/attack
#
# Objectのtick時の処理
#
# @within asset:object/2117.heiloang_tornado/tick/

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "None"
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..8] run function api:damage/
    function api:damage/reset

# 演出
    playsound entity.breeze.shoot hostile @a ~ ~ ~ 3 0.7
    playsound entity.breeze.shoot hostile @a ~ ~ ~ 3 0.5
    particle explosion_emitter ~ ~1 ~ 3 1 3 0.1 10 force
    particle gust ~ ~1 ~ 3 15 3 0.1 150 force
    particle flash ~ ~1 ~ 3 15 3 0.1 30 force

# 浮遊エフェクト付与
    effect give @a[distance=..30] jump_boost 9 5

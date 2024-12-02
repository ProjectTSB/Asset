#> asset:object/2114.heiloang_ehd_fire/tick/attack
#
# Objectのtick時の処理
#
# @within asset:object/2114.heiloang_ehd_fire/tick/attack_check

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Fire"
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..25] run function api:damage/
    function api:damage/reset

# 演出
    playsound entity.generic.explode hostile @a ~ ~ ~ 3 0.7
    playsound item.firecharge.use hostile @a ~ ~ ~ 3 0.7
    playsound item.firecharge.use hostile @a ~ ~ ~ 3 0.8
    particle soul_fire_flame ~ ~1 ~ 10 1 10 0.1 100 force
    particle explosion ~ ~1 ~ 10 1 10 0.1 100 force
    particle flash ~ ~1 ~ 10 1 10 0.1 30 force

# 消去
    kill @s

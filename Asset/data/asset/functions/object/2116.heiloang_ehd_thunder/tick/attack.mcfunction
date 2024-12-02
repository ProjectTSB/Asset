#> asset:object/2116.heiloang_ehd_thunder/tick/attack
#
# Objectのtick時の処理
#
# @within asset:object/2116.heiloang_ehd_thunder/tick/attack_check

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Thunder"
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..25] run function api:damage/
    function api:damage/reset

# 演出
    playsound entity.lightning_bolt.impact hostile @a ~ ~ ~ 3 0.7
    playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 3 1
    playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 3 0.7
    particle firework ~ ~1 ~ 10 1 10 0.1 100 force
    particle dust 1 0.855 0.376 4 ~ ~1 ~ 10 1 10 0.1 100 force
    particle flash ~ ~1 ~ 10 1 10 0.1 30 force

# 消去
    kill @s

#> asset:object/2115.heiloang_ehd_water/tick/attack
#
# Objectのtick時の処理
#
# @within asset:object/2115.heiloang_ehd_water/tick/attack_check

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Water"
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..25] run function api:damage/
    function api:damage/reset

# 演出
    playsound block.glass.break hostile @a ~ ~ ~ 3 0.7
    playsound block.glass.break hostile @a ~ ~ ~ 3 0.5
    playsound block.amethyst_block.break hostile @a ~ ~ ~ 3 0.7
    playsound block.amethyst_block.break hostile @a ~ ~ ~ 3 0.7
    particle block ice ~ ~1 ~ 10 1 10 0.1 100 force
    particle explosion ~ ~1 ~ 10 1 10 0.1 100 force
    particle flash ~ ~1 ~ 10 1 10 0.1 30 force

# 消去
    kill @s

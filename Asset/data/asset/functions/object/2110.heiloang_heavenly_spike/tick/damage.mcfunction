#> asset:object/2110.heiloang_heavenly_spike/tick/damage
#
# Objectのtick時の処理
#
# @within asset:object/2110.heiloang_heavenly_spike/tick/

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Water"
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..10] run function api:damage/
    function api:damage/reset

# 演出
    playsound block.glass.break hostile @a ~ ~ ~ 2 0.7
    playsound block.amethyst_block.break hostile @a ~ ~ ~ 2 0.7
    playsound block.amethyst_block.break hostile @a ~ ~ ~ 2 0.7
    particle firework ~ ~2 ~ 0.1 0.1 0.1 0.5 30
    particle block blue_ice ~ ~2 ~ 3 3 3 0.5 30
    function asset:object/2110.heiloang_heavenly_spike/tick/particle

# 消去
    kill @s

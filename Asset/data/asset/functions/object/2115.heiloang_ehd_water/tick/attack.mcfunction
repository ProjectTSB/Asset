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
    playsound block.amethyst_block.break hostile @a ~ ~ ~ 3 0.7
    playsound block.amethyst_block.break hostile @a ~ ~ ~ 3 0.7
    playsound block.amethyst_block.break hostile @a ~ ~ ~ 3 0.5
    playsound block.amethyst_block.break hostile @a ~ ~ ~ 3 0.5
    playsound entity.generic.explode hostile @a ~ ~ ~ 3 0.7
    particle block ice ~ ~1 ~ 10 1 10 0.1 100 force
    particle explosion ~ ~1 ~ 10 1 10 0.1 100 force
    particle flash ~ ~1 ~ 10 1 10 0.1 30 force

# 演出用AEC召喚
    summon area_effect_cloud ~ ~ ~ {Duration:60,Tags:["2115.Pos"]}
    summon area_effect_cloud ~ ~ ~ {Duration:60,Tags:["2115.Pos"]}
    summon area_effect_cloud ~ ~ ~ {Duration:60,Tags:["2115.Pos"]}
    summon area_effect_cloud ~ ~ ~ {Duration:60,Tags:["2115.Pos"]}
    summon area_effect_cloud ~ ~ ~ {Duration:60,Tags:["2115.Pos"]}
    spreadplayers ~ ~ 6 15 false @e[type=area_effect_cloud,tag=2115.Pos]

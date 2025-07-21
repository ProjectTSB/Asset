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
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..25] run function asset:object/2114.heiloang_ehd_fire/tick/attack_player
    function api:damage/reset

# 演出
    playsound entity.generic.explode hostile @a ~ ~ ~ 3 0.7
    playsound item.firecharge.use hostile @a ~ ~ ~ 3 0.7
    playsound item.firecharge.use hostile @a ~ ~ ~ 3 0.8
    particle flame ~ ~1 ~ 10 1 10 0.1 100 force
    particle explosion ~ ~1 ~ 10 1 10 0.1 100 force
    particle flash ~ ~1 ~ 10 1 10 0.1 30 force

# 演出用AEC召喚
    summon area_effect_cloud ~ ~ ~ {Duration:60,Tags:["2114.Pos"]}
    summon area_effect_cloud ~ ~ ~ {Duration:60,Tags:["2114.Pos"]}
    summon area_effect_cloud ~ ~ ~ {Duration:60,Tags:["2114.Pos"]}
    summon area_effect_cloud ~ ~ ~ {Duration:60,Tags:["2114.Pos"]}
    summon area_effect_cloud ~ ~ ~ {Duration:60,Tags:["2114.Pos"]}
    spreadplayers ~ ~ 6 15 false @e[type=area_effect_cloud,tag=2114.Pos]

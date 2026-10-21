#> asset:object/2074.water_magic/tick/attack
#
# ダメージを与える
#
# @within function asset:object/2074.water_magic/tick/

# particle
    particle splash ~ ~0.5 ~ 1 0.2 1 0 40 normal @a

# playsound
    playsound entity.dolphin.splash hostile @a ~ ~ ~ 0.8 2 0
    playsound entity.dolphin.splash hostile @a ~ ~ ~ 0.8 1 0
    playsound entity.dolphin.splash hostile @a ~ ~ ~ 0.8 0 0

# 演出用Object召喚
    data modify storage api: Argument.ID set value 2277
    data modify storage api: Argument.FieldOverride.Scale set value 4.5f
    function api:object/summon

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.Metadata set from storage asset:context this.Metadata
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Water"
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sにより激流に飲み込まれた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sにより水底に沈んだ","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..2.25] positioned ~-2.25 ~-1.5 ~-2.25 if entity @s[dx=3.5,dy=2,dz=3.5] run function api:damage/
    function api:damage/reset

# (AttackCount - 1)し、0なら消す
    execute store result storage asset:context this.AttackCount int 0.9999999999 run data get storage asset:context this.AttackCount
    execute if data storage asset:context this{AttackCount:0} run kill @s

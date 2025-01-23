#> asset:object/2074.water_magic/tick/damage
#
# ダメージを与える
#
# @within function asset:object/2074.water_magic/tick/

# 演出
    playsound entity.dolphin.splash hostile @a ~ ~ ~ 0.8 2 0
    playsound entity.dolphin.splash hostile @a ~ ~ ~ 0.8 1 0
    playsound entity.dolphin.splash hostile @a ~ ~ ~ 0.8 0 0
    execute positioned ~ ~0.3 ~ rotated 0 0 run function asset:object/2074.water_magic/tick/vfx/square

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Water"
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sにより激流に飲み込まれた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sにより水底に沈んだ","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..2.25] positioned ~-2.25 ~-1.5 ~-2.25 if entity @s[dx=3.5,dy=2,dz=3.5] run function api:damage/
    function api:damage/reset

# Slowness:falseならreturn
    execute if data storage asset:context this{Slowness:false} run return 0

# Slowness:trueなら移動速度低下を付与
    data modify storage api: Argument set value {ID:17,Stack:9,Duration:15}
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..2.25] positioned ~-2.25 ~-1.5 ~-2.25 if entity @s[dx=3.5,dy=2,dz=3.5] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

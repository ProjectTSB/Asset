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
    data modify storage api: Argument.Damage set value 24.5f
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Water"
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sにより激流に飲み込まれた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sにより水底に沈んだ","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    function api:damage/modifier
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..2.25] positioned ~-2.25 ~-1.5 ~-2.25 if entity @s[dx=3.5,dy=2,dz=3.5] run function api:damage/
    function api:damage/reset

# Slowness:trueなら鈍足を付与
    execute if data storage asset:context this{Slowness:true} as @a[tag=!PlayerShouldInvulnerable,distance=..2.25] positioned ~-2.25 ~-1.5 ~-2.25 if entity @s[dx=3.5,dy=2,dz=3.5] run effect give @s slowness 1 2 true

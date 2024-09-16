#> asset:mob/0214.water_magic/tick/4.damage_and_vfx
#
# ダメージと演出
#
# @within function asset:mob/0214.water_magic/tick/2.tick

# vfx
    execute positioned ~ ~0.3 ~ rotated 0 0 run function asset:mob/0214.water_magic/tick/vfx2

# ダメージ
    data modify storage api: Argument.Damage set value 24.5f
    data modify storage api: Argument.AttackType set value "Magic"
     data modify storage api: Argument.ElementType set value "Water"
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sにより激流に飲み込まれた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sにより水底に沈んだ","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    function api:damage/modifier
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..2.25] positioned ~-2.25 ~-1.5 ~-2.25 if entity @s[dx=3.5,dy=2,dz=3.5] run function api:damage/
    function api:damage/reset

# ハード以上で鈍足を付与
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..2.25] positioned ~-2.25 ~-1.5 ~-2.25 if entity @s[dx=3.5,dy=2,dz=3.5] run effect give @s slowness 1 2 true

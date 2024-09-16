#> asset:mob/0075.watermelon/tick/explosion
#
# 爆発する
#
# @within function asset:mob/0075.watermelon/tick/

# 演出
    playsound entity.dolphin.swim hostile @a ~ ~ ~ 2 1 0
    playsound entity.generic.explode hostile @a ~ ~ ~ 1.3 1 0
    particle dust 1 0.141 0.141 3 ~ ~ ~ 2 2 2 0 30 normal @a
    particle explosion ~ ~ ~ 1 1 1 0 5 normal @a

# スイカスライスを召喚
    summon item ~ ~ ~ {Age:5900s,PickupDelay:5s,Item:{id:"minecraft:melon_slice",Count:5b}}

# ダメージ
    data modify storage api: Argument.Damage set value 13.0
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Water"
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sによってスイカの爆発に巻き込まれた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sのスイカの爆発の衝撃波に巻き込まれた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    function api:damage/modifier
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..2.5] run function api:damage/
    function api:damage/reset

# 消滅
    kill @s

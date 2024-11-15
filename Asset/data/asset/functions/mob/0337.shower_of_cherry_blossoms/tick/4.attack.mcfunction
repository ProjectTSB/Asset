#> asset:mob/0337.shower_of_cherry_blossoms/tick/4.attack
#
# 桜吹雪の攻撃
#
# @within function asset:mob/0337.shower_of_cherry_blossoms/tick/

# ダメージ
    data modify storage api: Argument.Damage set value 3.0d
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Water"
    data modify storage api: Argument.DeathMessage append value '{"translate": "%1$sは%2$sによって桜の木の下に埋められた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}'
    data modify storage api: Argument.DeathMessage append value '{"translate": "%1$sは桜の木を切り倒した罪を背負いながら、%2$sによって倒された","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}'
    execute as @e[type=#lib:living,tag=this,distance=..16,limit=1] run function api:damage/modifier
    function api:damage/
    function api:damage/reset

# タグ外し
    tag @s remove 9D.Landing

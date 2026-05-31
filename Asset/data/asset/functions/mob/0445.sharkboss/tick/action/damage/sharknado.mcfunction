#> asset:mob/0445.sharkboss/tick/action/damage/sharknado
#
# 
#
# @within function asset:mob/0445.sharkboss/tick/action/sharknado3

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage.Sharknado
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Water"
    data modify storage api: Argument.DeathMessage append value '{"translate": "%1$sは%2$sに噛み砕かれた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}'
    function api:damage/modifier
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..30] run function api:damage/
    function api:damage/reset

# 吹っ飛ばしタグ
    tag @a[tag=!PlayerShouldInvulnerable,distance=..30] add CD.Player.Launch.First
    tag @a[tag=!PlayerShouldInvulnerable,distance=..30] add CD.Player.Launch.VerticalStrong

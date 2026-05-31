#> asset:mob/0445.sharkboss/tick/action/damage/spin
#
# 
#
# @within function asset:mob/0445.sharkboss/tick/action/spin

# ダメージ
    #data modify storage api: Argument.Damage set value 1.0
    data modify storage api: Argument.Damage set from storage asset:context this.Damage.Bite
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Water"
    data modify storage api: Argument.DeathMessage append value '{"translate": "%1$sは%2$sに噛み砕かれた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}'
    function api:damage/modifier
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..8] run function api:damage/
    function api:damage/reset

# 吹っ飛ばしタグ
    tag @a[tag=!PlayerShouldInvulnerable,distance=..8] add CD.Player.Launch.First
    tag @a[tag=!PlayerShouldInvulnerable,distance=..8] add CD.Player.Launch.VerticalStrong

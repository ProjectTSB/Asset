#> asset:mob/0445.sharkboss/tick/action/damage/emp
#
# 
#
# @within function asset:mob/0445.sharkboss/tick/action/emp

# ダメージ
    #data modify storage api: Argument.Damage set value 1.0
    data modify storage api: Argument.Damage set from storage asset:context this.Damage.Bite
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Water"
    data modify storage api: Argument.DeathMessage append value '{"translate": "%1$sは%2$sに噛み砕かれた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}'
    function api:damage/modifier
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..5] run function api:damage/
    function api:damage/reset

    # Motion
    data modify storage lib: Argument.VectorMagnitude set value 3.1d
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..5] rotated ~ -45 run function lib:motion/looking

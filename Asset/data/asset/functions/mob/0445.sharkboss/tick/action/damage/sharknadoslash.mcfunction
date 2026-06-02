#> asset:mob/0445.sharkboss/tick/action/damage/sharknadoslash
#
# 
#
# @within function asset:mob/0445.sharkboss/tick/action/sharknadoslash

# 攻撃を受けるプレイヤーに一時的にタグ付与
   execute as @a[tag=!PlayerShouldInvulnerable,distance=..1.2] run tag @s add CD.Player.TempDamageTarget

# ダメージ
    #data modify storage api: Argument.Damage set value 1.0
    data modify storage api: Argument.Damage set from storage asset:context this.Damage.SharknadoSlash
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    data modify storage api: Argument.DeathMessage append value '{"translate": "%1$sは%2$sにぶっ飛ばされた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}'
    function api:damage/modifier
    execute as @a[tag=CD.Player.TempDamageTarget] run function api:damage/
    function api:damage/reset

# 吹っ飛ばしタグ
    tag @a[tag=CD.Player.TempDamageTarget] add CD.Player.Launch.First
    tag @a[tag=CD.Player.TempDamageTarget] add CD.Player.Launch.HorizontalNormal

# 攻撃を受けるプレイヤーのタグ外す
    tag @a[tag=CD.Player.TempDamageTarget] remove CD.Player.TempDamageTarget

#> asset:mob/0445.sharkboss/tick/action/damage/sharknado
#
# 
#
# @within function asset:mob/0445.sharkboss/tick/action/sharknado3

# 攻撃を受けるプレイヤーに一時的にタグ付与
   execute as @a[tag=!PlayerShouldInvulnerable,distance=..80] unless score @s CD.Player.DamageTimer matches 1.. run tag @s add CD.Player.TempDamageTarget


# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage.Sharknado
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Water"
    data modify storage api: Argument.DeathMessage append value '{"translate": "%1$sは%2$sに噛み砕かれた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}'
    function api:damage/modifier
    execute as @a[tag=CD.Player.TempDamageTarget] run function api:damage/
    function api:damage/reset

# 吹っ飛ばしタグ
    tag @a[tag=CD.Player.TempDamageTarget] add CD.Player.Launch.First
    tag @a[tag=CD.Player.TempDamageTarget] add CD.Player.Launch.VerticalStrong

# 攻撃を受けるプレイヤーのタグ外す
    tag @a[tag=CD.Player.TempDamageTarget] remove CD.Player.TempDamageTarget

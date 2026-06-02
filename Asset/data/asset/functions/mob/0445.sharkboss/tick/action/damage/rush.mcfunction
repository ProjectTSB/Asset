#> asset:mob/0445.sharkboss/tick/action/damage/rush
#
# 
#
# @within function asset:mob/0445.sharkboss/tick/action/**

# 攻撃を受けるプレイヤーに一時的にタグ付与
   execute as @a[tag=!PlayerShouldInvulnerable,distance=..2] unless score @s CD.Player.DamageTimer matches 1.. run tag @s add CD.Player.TempDamageTarget

# 連続ヒットしない
    scoreboard players set @a[tag=CD.Player.TempDamageTarget] CD.Player.DamageTimer 6

# ダメージ
    #data modify storage api: Argument.Damage set value 1.0
    data modify storage api: Argument.Damage set from storage asset:context this.Damage.Rush
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Water"
    function api:damage/modifier
    execute as @a[tag=CD.Player.TempDamageTarget] run function api:damage/
    function api:damage/reset

# 吹っ飛ばしタグ
    tag @a[tag=CD.Player.TempDamageTarget] add CD.Player.Launch.First
    tag @a[tag=CD.Player.TempDamageTarget] add CD.Player.Launch.VerticalLight

# 攻撃を受けるプレイヤーのタグ外す
    tag @a[tag=CD.Player.TempDamageTarget] remove CD.Player.TempDamageTarget

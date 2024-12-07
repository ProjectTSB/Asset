#> asset:mob/0410.heiloang/tick/event/move/attack
#
# 移動攻撃
#
# @within asset:mob/0410.heiloang/tick/event/move/

# ヒット判定
    execute positioned ^15 ^ ^ as @a[tag=!PlayerShouldInvulnerable,distance=..10] run tag @s add BE.Temp.Hit
    execute positioned ^10 ^ ^ as @a[tag=!PlayerShouldInvulnerable,distance=..10] run tag @s add BE.Temp.Hit
    execute positioned ^5 ^ ^ as @a[tag=!PlayerShouldInvulnerable,distance=..10] run tag @s add BE.Temp.Hit
    execute positioned ^-5 ^ ^ as @a[tag=!PlayerShouldInvulnerable,distance=..10] run tag @s add BE.Temp.Hit
    execute positioned ^-10 ^ ^ as @a[tag=!PlayerShouldInvulnerable,distance=..10] run tag @s add BE.Temp.Hit
    execute positioned ^-15 ^ ^ as @a[tag=!PlayerShouldInvulnerable,distance=..10] run tag @s add BE.Temp.Hit

# ダメージ
    data modify storage lib: Argument.Damage set value 20f
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "None"
    function lib:damage/modifier
    execute as @a[tag=BE.Temp.Hit] at @s run function lib:damage/
    function lib:damage/reset

# 終了
    tag @a remove BE.Temp.Hit

#> asset:mob/0410.heiloang/tick/event/move_after_ehd/attack
#
# 移動攻撃
#
# @within asset:mob/0410.heiloang/tick/event/move_after_ehd/

# ヒット判定
    execute positioned ^15 ^ ^ as @a[tag=!PlayerShouldInvulnerable,distance=..10] run tag @s add BE.Temp.Hit
    execute positioned ^10 ^ ^ as @a[tag=!PlayerShouldInvulnerable,distance=..10] run tag @s add BE.Temp.Hit
    execute positioned ^5 ^ ^ as @a[tag=!PlayerShouldInvulnerable,distance=..10] run tag @s add BE.Temp.Hit
    execute positioned ^-5 ^ ^ as @a[tag=!PlayerShouldInvulnerable,distance=..10] run tag @s add BE.Temp.Hit
    execute positioned ^-10 ^ ^ as @a[tag=!PlayerShouldInvulnerable,distance=..10] run tag @s add BE.Temp.Hit
    execute positioned ^-15 ^ ^ as @a[tag=!PlayerShouldInvulnerable,distance=..10] run tag @s add BE.Temp.Hit

    execute positioned ^15 ^ ^ run particle cloud ~ ~5 ~ 2 2 2 0.1 20
    execute positioned ^5 ^ ^ run particle cloud ~ ~5 ~ 2 2 2 0.1 20
    execute positioned ^-5 ^ ^ run particle cloud ~ ~5 ~ 2 2 2 0.1 20
    execute positioned ^-15 ^ ^ run particle cloud ~ ~5 ~ 2 2 2 0.1 20
    execute positioned ^15 ^ ^-4 run particle explosion ~ ~1 ~ 3 0.8 3 0.1 10
    execute positioned ^5 ^ ^-4 run particle explosion ~ ~1 ~ 3 0.8 3 0.1 10
    execute positioned ^-5 ^ ^-4 run particle explosion ~ ~1 ~ 3 0.8 3 0.1 10
    execute positioned ^-15 ^ ^-4 run particle explosion ~ ~1 ~ 3 0.8 3 0.1 10
    execute positioned ^15 ^ ^-4 run particle block stone ~ ~1 ~ 3 0.2 3 0.1 10
    execute positioned ^5 ^ ^-4 run particle block stone ~ ~1 ~ 3 0.2 3 0.1 10
    execute positioned ^-5 ^ ^-4 run particle block stone ~ ~1 ~ 3 0.2 3 0.1 10
    execute positioned ^-15 ^ ^-4 run particle block stone ~ ~1 ~ 3 0.2 3 0.1 10

# ダメージ
    data modify storage api: Argument.Damage set value 10
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    function api:damage/modifier
    execute as @a[tag=BE.Temp.Hit] run function api:damage/
    function api:damage/reset

# 終了
    tag @a remove BE.Temp.Hit

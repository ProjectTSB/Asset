#> asset:mob/0410.heiloang/tick/event/move/attack
#
# 移動攻撃
#
# @within asset:mob/0410.heiloang/tick/event/move/

# ヒット判定
    data modify storage lib: args.dx set value 20
    data modify storage lib: args.dy set value 10
    data modify storage lib: args.dz set value 18
    data modify storage lib: args.selector set value "@a[tag=!PlayerShouldInvulnerable,distance=..50]"
    execute positioned ^ ^-5 ^-9 run function lib:rotatable_dxyz/m with storage lib: args
    tag @a[tag=DXYZ] add BE.Temp.Hit
    tag @a[tag=DXYZ] remove DXYZ

# 演出
    execute positioned ^15 ^ ^5 run particle cloud ~ ~5 ~ 2 2 2 0.1 20
    execute positioned ^5 ^ ^5 run particle cloud ~ ~5 ~ 2 2 2 0.1 20
    execute positioned ^-5 ^ ^5 run particle cloud ~ ~5 ~ 2 2 2 0.1 20
    execute positioned ^-15 ^ ^5 run particle cloud ~ ~5 ~ 2 2 2 0.1 20
    execute positioned ^15 ^ ^7 run particle explosion ~ ~1 ~ 3 0.8 3 0.1 10
    execute positioned ^5 ^ ^7 run particle explosion ~ ~1 ~ 3 0.8 3 0.1 10
    execute positioned ^-5 ^ ^7 run particle explosion ~ ~1 ~ 3 0.8 3 0.1 10
    execute positioned ^-15 ^ ^7 run particle explosion ~ ~1 ~ 3 0.8 3 0.1 10
    execute positioned ^15 ^ ^7 run particle block stone ~ ~1 ~ 3 0.2 3 0.1 10
    execute positioned ^5 ^ ^7 run particle block stone ~ ~1 ~ 3 0.2 3 0.1 10
    execute positioned ^-5 ^ ^7 run particle block stone ~ ~1 ~ 3 0.2 3 0.1 10
    execute positioned ^-15 ^ ^7 run particle block stone ~ ~1 ~ 3 0.2 3 0.1 10

# ダメージ
    data modify storage api: Argument.Damage set value 50.0f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    function api:damage/modifier
    execute as @a[tag=BE.Temp.Hit] run function api:damage/
    function api:damage/reset

# 終了
    tag @a remove BE.Temp.Hit

#> asset:mob/0410.heiloang/tick/event/plamet/attack_dive
#
# 急降下
#
# @within asset:mob/0410.heiloang/tick/event/plamet/

# ヒット判定
    data modify storage lib: args.dx set value 6
    data modify storage lib: args.dy set value 10
    data modify storage lib: args.dz set value 7.5
    data modify storage lib: args.selector set value "@a[tag=!PlayerShouldInvulnerable,distance=..50]"
    function lib:rotatable_dxyz/m with storage lib: args
    tag @a[tag=DXYZ] add BE.Temp.Hit
    tag @a[tag=DXYZ] remove DXYZ

# ダメージ
    data modify storage api: Argument.Damage set value 5
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    function api:damage/modifier
    execute as @a[tag=BE.Temp.Hit] run function api:damage/
    function api:damage/reset

# 終了
    tag @a remove BE.Temp.Hit

#> asset:mob/0410.heiloang/tick/event/terzetto_succession_dive/attack_dive
#
# テルツェット・サクセッション
#
# @within asset:mob/0410.heiloang/tick/event/terzetto_succession_dive/

# ヒット判定
    tag @a[tag=DXYZ] remove DXYZ
    data modify storage lib: args.dx set value 12.5
    data modify storage lib: args.dy set value 11
    data modify storage lib: args.dz set value 7.5
    data modify storage lib: args.selector set value "@a[tag=!PlayerShouldInvulnerable,distance=..50]"
    function lib:rotatable_dxyz/m with storage lib: args

# ダメージ
    data modify storage api: Argument.Damage set value 56.0f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    function api:damage/modifier
    execute as @a[tag=DXYZ] run function api:damage/
    function api:damage/reset

# 終了
    tag @a[tag=DXYZ] remove DXYZ

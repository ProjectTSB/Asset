#> asset:mob/0411.behemoth/tick/event/terzetto_succession_a/attack_dive
#
# テルツェット・サクセッション
#
# @within asset:mob/0411.behemoth/tick/event/terzetto_succession_a/

# ヒット判定
    tag @a[tag=DXYZ] remove DXYZ
    data modify storage lib: args.dx set value 9
    data modify storage lib: args.dy set value 11
    data modify storage lib: args.dz set value 7.5
    data modify storage lib: args.selector set value "@a[tag=!PlayerShouldInvulnerable,distance=..50]"
    function lib:rotatable_dxyz/m with storage lib: args

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage.Dive
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Fire"
    function api:damage/modifier
    execute as @a[tag=DXYZ] run function api:damage/
    function api:damage/reset

# 終了
    tag @a[tag=DXYZ] remove DXYZ

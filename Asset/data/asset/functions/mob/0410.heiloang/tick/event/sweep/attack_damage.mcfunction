#> asset:mob/0410.heiloang/tick/event/sweep/attack_damage
#
# なぎはらい火炎放射
#
# @within
#         function asset:mob/0410.heiloang/tick/event/sweep/
#         function asset:mob/0410.heiloang/tick/event/heil_disaster/
#         function asset:mob/0410.heiloang/tick/event/heil_disaster/hard

# ヒット判定
    tag @a[tag=DXYZ] remove DXYZ
    data modify storage lib: args.dx set value 2
    data modify storage lib: args.dy set value 3
    data modify storage lib: args.dz set value 20
    data modify storage lib: args.selector set value "@a[tag=!PlayerShouldInvulnerable,distance=..60]"
    execute positioned ^ ^ ^ run function lib:rotatable_dxyz/m with storage lib: args

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage.Sweep
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Fire"
    function api:damage/modifier
    execute as @a[tag=DXYZ] run function api:damage/
    function api:damage/reset

 # デバッグ用、攻撃範囲の可視化
    # data modify storage api: Argument.ID set value 2113
    # data modify storage api: Argument.FieldOverride.Color set value 16761175
    # data modify storage api: Argument.FieldOverride.Scale set value [4f,40f]
    # data modify storage api: Argument.FieldOverride.Interpolation set value 1
    # data modify storage api: Argument.FieldOverride.Tick set value 20
    # execute positioned ^ ^-0.8 ^-20 run function api:object/summon

# 終了
    tag @a remove DXYZ

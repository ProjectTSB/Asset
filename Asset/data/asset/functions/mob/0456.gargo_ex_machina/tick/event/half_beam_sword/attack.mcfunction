#> asset:mob/0456.gargo_ex_machina/tick/event/half_beam_sword/attack
#
# 半面焼きビーム
#
# @within asset:mob/0456.gargo_ex_machina/tick/event/half_beam_sword/event_attack

# ヒット判定
    # 直線範囲
        tag @a[tag=DXYZ] remove DXYZ
        data modify storage lib: args.dx set value 30
        data modify storage lib: args.dy set value 5
        data modify storage lib: args.dz set value 50
        data modify storage lib: args.selector set value "@a[tag=!PlayerShouldInvulnerable,distance=..50]"
        execute rotated ~20 0 positioned ^ ^ ^ run function lib:rotatable_dxyz/m with storage lib: args
        data modify storage lib: args.dx set value 30
        data modify storage lib: args.dy set value 5
        data modify storage lib: args.dz set value 50
        data modify storage lib: args.selector set value "@a[tag=!PlayerShouldInvulnerable,distance=..50]"
        execute rotated ~-20 0 positioned ^ ^ ^ run function lib:rotatable_dxyz/m with storage lib: args

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage.HalfBeam.Amount
    data modify storage api: Argument.AttackType set from storage asset:context this.Damage.HalfBeam.Type
    data modify storage api: Argument.ElementType set from storage asset:context this.Damage.HalfBeam.Element
    function api:damage/modifier
    execute as @a[tag=DXYZ] run function api:damage/
    function api:damage/reset

# 終了
    tag @a[tag=DXYZ] remove DXYZ

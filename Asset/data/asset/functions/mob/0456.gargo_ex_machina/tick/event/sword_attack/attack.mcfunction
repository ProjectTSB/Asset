#> asset:mob/0456.gargo_ex_machina/tick/event/sword_attack/attack
#
# 剣叩きつけ
#
# @within asset:mob/0456.gargo_ex_machina/tick/event/sword_attack/event_attack

# ヒット判定
    # 円範囲
        tag @a[distance=..10] add DXYZ
    # 直線範囲
        tag @a[tag=DXYZ] remove DXYZ
        data modify storage lib: args.dx set value 4
        data modify storage lib: args.dy set value 5
        data modify storage lib: args.dz set value 50
        data modify storage lib: args.selector set value "@a[tag=!PlayerShouldInvulnerable,distance=..50]"
        execute rotated ~ 0 run function lib:rotatable_dxyz/m with storage lib: args
        data modify storage lib: args.dx set value 4
        data modify storage lib: args.dy set value 5
        data modify storage lib: args.dz set value 50
        data modify storage lib: args.selector set value "@a[tag=!PlayerShouldInvulnerable,distance=..50]"
        execute rotated ~60 0 run function lib:rotatable_dxyz/m with storage lib: args
        data modify storage lib: args.dx set value 4
        data modify storage lib: args.dy set value 5
        data modify storage lib: args.dz set value 50
        data modify storage lib: args.selector set value "@a[tag=!PlayerShouldInvulnerable,distance=..50]"
        execute rotated ~120 0 run function lib:rotatable_dxyz/m with storage lib: args

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage.SwordAttack
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    function api:damage/modifier
    execute as @a[tag=DXYZ] run function api:damage/
    function api:damage/reset

# 演出
    function asset:mob/0456.gargo_ex_machina/tick/event/sword_attack/attack_effect

# 終了
    tag @a[tag=DXYZ] remove DXYZ

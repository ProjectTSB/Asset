#> asset:mob/0456.gargo_ex_machina/tick/event/sword_attack/attack_double
#
# 剣叩きつけ
#
# @within asset:mob/0456.gargo_ex_machina/tick/event/sword_attack/event_attack_double

# ヒット判定
    # 円範囲
        tag @a[distance=..10] add DXYZ
    # 直線範囲
        tag @a[tag=DXYZ] remove DXYZ
        execute if predicate api:global_vars/difficulty/max/2_hard run data modify storage lib: args.dx set value 4
        execute if predicate api:global_vars/difficulty/min/3_blessless run data modify storage lib: args.dx set value 6
        data modify storage lib: args.dy set value 5
        data modify storage lib: args.dz set value 50
        data modify storage lib: args.selector set value "@a[tag=!PlayerShouldInvulnerable,distance=..50]"
        execute rotated ~30 0 run function lib:rotatable_dxyz/m with storage lib: args
        execute if predicate api:global_vars/difficulty/max/2_hard run data modify storage lib: args.dx set value 4
        execute if predicate api:global_vars/difficulty/min/3_blessless run data modify storage lib: args.dx set value 6
        data modify storage lib: args.dy set value 5
        data modify storage lib: args.dz set value 50
        data modify storage lib: args.selector set value "@a[tag=!PlayerShouldInvulnerable,distance=..50]"
        execute rotated ~90 0 run function lib:rotatable_dxyz/m with storage lib: args
        execute if predicate api:global_vars/difficulty/max/2_hard run data modify storage lib: args.dx set value 4
        execute if predicate api:global_vars/difficulty/min/3_blessless run data modify storage lib: args.dx set value 6
        data modify storage lib: args.dy set value 5
        data modify storage lib: args.dz set value 50
        data modify storage lib: args.selector set value "@a[tag=!PlayerShouldInvulnerable,distance=..50]"
        execute rotated ~150 0 run function lib:rotatable_dxyz/m with storage lib: args

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage.SwordAttack.Amount
    data modify storage api: Argument.AttackType set from storage asset:context this.Damage.SwordAttack.Type
    data modify storage api: Argument.ElementType set from storage asset:context this.Damage.SwordAttack.Element
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sの巨大な剣でぺしゃんこになった","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    function api:damage/modifier
    execute as @a[tag=DXYZ] run function api:damage/
    function api:damage/reset

# 演出
    function asset:mob/0456.gargo_ex_machina/tick/event/sword_attack/attack_effect

# 終了
    tag @a[tag=DXYZ] remove DXYZ

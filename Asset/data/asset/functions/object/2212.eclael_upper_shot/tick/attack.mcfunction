#> asset:object/2212.eclael_upper_shot/tick/attack
#
# Objectのtick時の処理
#
# @within asset:object/2212.eclael_upper_shot/tick/

# ヒット判定
    tag @a[tag=DXYZ] remove DXYZ
    data modify storage lib: args.dx set value 4
    data modify storage lib: args.dy set value 5
    data modify storage lib: args.dz set value 30
    data modify storage lib: args.selector set value "@a[tag=!PlayerShouldInvulnerable,distance=..30]"
    function lib:rotatable_dxyz/m with storage lib: args

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Thunder"
    data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
    function api:damage/modifier_manual
    execute as @a[tag=DXYZ] run function api:damage/
    function api:damage/reset

# 演出
    execute at @a[tag=DXYZ] rotated ~ -90 run function asset:object/2212.eclael_upper_shot/tick/effect_hit

# 終了
    tag @a[tag=DXYZ] remove DXYZ

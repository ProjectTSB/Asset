#> asset:object/2210.eclael_land_slash/tick/attack
#
# Objectのtick時の処理
#
# @within asset:object/2210.eclael_land_slash/tick/

# [ImportKey]: NobwRALgngDgpmAXGANgSwHYIDRgK55oAmSYADABwBMAhgCx0BmVAtHQIyVsDGdFLFMnTgsAbACMAnDSKi4AVjhwOYXBhoBbBMkBbvgAJ2qsDBoAnTQGck4bgHs8GCEk65Gp2xutgAbjRR5tcAAPJDJcKCQWeQBfaNwIWy9ff0CwEMQwsAjEGLiwW0ZGCzgnDNxxOAAvNDhTUNw0CwAhKprTAFEARzw-FCgAZRNuOBJERj9i2IBdIA_3
# 線 1
    particle block quartz_block ^0 ^ ^-5 0.1 0.1 0.1 0.1 3
    particle block quartz_block ^0 ^ ^-3.88889 0.1 0.1 0.1 0.1 3
    particle block quartz_block ^0 ^ ^-2.77778 0.1 0.1 0.1 0.1 3
    particle block quartz_block ^0 ^ ^-1.66667 0.1 0.1 0.1 0.1 3
    particle block quartz_block ^0 ^ ^-0.55556 0.1 0.1 0.1 0.1 3
    particle block quartz_block ^0 ^ ^0.55556 0.1 0.1 0.1 0.1 3
    particle block quartz_block ^0 ^ ^1.66667 0.1 0.1 0.1 0.1 3
    particle block quartz_block ^0 ^ ^2.77778 0.1 0.1 0.1 0.1 3
    particle block quartz_block ^0 ^ ^3.88889 0.1 0.1 0.1 0.1 3
    particle block quartz_block ^0 ^ ^5 0.1 0.1 0.1 0.1 3
    particle end_rod ^0 ^0.1 ^-5 0.1 0.1 0.1 0.1 1
    particle end_rod ^0 ^0.1 ^-3.88889 0.1 0.1 0.1 0.1 1
    particle end_rod ^0 ^0.1 ^-2.77778 0.1 0.1 0.1 0.1 1
    particle end_rod ^0 ^0.1 ^-1.66667 0.1 0.1 0.1 0.1 1
    particle end_rod ^0 ^0.1 ^-0.55556 0.1 0.1 0.1 0.1 1
    particle end_rod ^0 ^0.1 ^0.55556 0.1 0.1 0.1 0.1 1
    particle end_rod ^0 ^0.1 ^1.66667 0.1 0.1 0.1 0.1 1
    particle end_rod ^0 ^0.1 ^2.77778 0.1 0.1 0.1 0.1 1
    particle end_rod ^0 ^0.1 ^3.88889 0.1 0.1 0.1 0.1 1
    particle end_rod ^0 ^0.1 ^5 0.1 0.1 0.1 0.1 1

# ヒット判定
    tag @a[tag=DXYZ] remove DXYZ
    data modify storage lib: args.dx set value 1
    data modify storage lib: args.dy set value 5
    data modify storage lib: args.dz set value 5
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

# 終了
    tag @a[tag=DXYZ] remove DXYZ

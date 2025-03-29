#> asset:object/2161.haruclaire_ic_pisces/tick/damage
#
# Objectのtick時の処理
#
# @within asset:object/2161.haruclaire_ic_pisces/tick/attack

# ダメージ
    # ヒット判定
        tag @a remove DXYZ
        data modify storage lib: args.dx set value 6
        data modify storage lib: args.dy set value 4
        data modify storage lib: args.dz set value 5
        data modify storage lib: args.selector set value "@a[tag=!PlayerShouldInvulnerable,tag=!2161.Attack.Hit,distance=..30]"
        execute positioned ^ ^2 ^5 run function lib:rotatable_dxyz/m with storage lib: args
        execute unless entity @a[tag=DXYZ] run return 0
    # ダメージ
        data modify storage api: Argument.Damage set from storage asset:context this.Damage
        data modify storage api: Argument.AttackType set value "Magic"
        data modify storage api: Argument.ElementType set value "Water"
        data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは かれいなおよぎに みとれてしまった","with":[{"selector":"@s"}]}]'
        data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
        function api:damage/modifier_manual
        execute as @a[tag=DXYZ] run function api:damage/
        function api:damage/reset
        tag @a[tag=DXYZ] add 2161.Attack.Hit
        tag @a remove DXYZ

# # 演出
#     # 円 1
#     execute rotated ~00 0 positioned ^ ^0.2 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000005 0
#     execute rotated ~10 0 positioned ^ ^0.2 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000005 0
#     execute rotated ~20 0 positioned ^ ^0.2 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000005 0
#     execute rotated ~30 0 positioned ^ ^0.2 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000005 0
#     execute rotated ~40 0 positioned ^ ^0.2 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000005 0
#     execute rotated ~50 0 positioned ^ ^0.2 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000005 0
#     execute rotated ~60 0 positioned ^ ^0.2 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000005 0
#     execute rotated ~70 0 positioned ^ ^0.2 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000005 0
#     execute rotated ~80 0 positioned ^ ^0.2 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000005 0
#     execute rotated ~90 0 positioned ^ ^0.2 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000005 0
#     execute rotated ~100 0 positioned ^ ^0.2 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000005 0
#     execute rotated ~110 0 positioned ^ ^0.2 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000005 0
#     execute rotated ~120 0 positioned ^ ^0.2 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000005 0
#     execute rotated ~130 0 positioned ^ ^0.2 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000005 0
#     execute rotated ~140 0 positioned ^ ^0.2 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000005 0
#     execute rotated ~150 0 positioned ^ ^0.2 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000005 0
#     execute rotated ~160 0 positioned ^ ^0.2 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000005 0
#     execute rotated ~170 0 positioned ^ ^0.2 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000005 0
#     execute rotated ~180 0 positioned ^ ^0.2 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000005 0
#     execute rotated ~190 0 positioned ^ ^0.2 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000005 0
#     execute rotated ~200 0 positioned ^ ^0.2 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000005 0
#     execute rotated ~210 0 positioned ^ ^0.2 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000005 0
#     execute rotated ~220 0 positioned ^ ^0.2 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000005 0
#     execute rotated ~230 0 positioned ^ ^0.2 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000005 0
#     execute rotated ~240 0 positioned ^ ^0.2 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000005 0
#     execute rotated ~250 0 positioned ^ ^0.2 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000005 0
#     execute rotated ~260 0 positioned ^ ^0.2 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000005 0
#     execute rotated ~270 0 positioned ^ ^0.2 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000005 0
#     execute rotated ~280 0 positioned ^ ^0.2 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000005 0
#     execute rotated ~290 0 positioned ^ ^0.2 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000005 0
#     execute rotated ~300 0 positioned ^ ^0.2 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000005 0
#     execute rotated ~310 0 positioned ^ ^0.2 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000005 0
#     execute rotated ~320 0 positioned ^ ^0.2 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000005 0
#     execute rotated ~330 0 positioned ^ ^0.2 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000005 0
#     execute rotated ~340 0 positioned ^ ^0.2 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000005 0
#     execute rotated ~350 0 positioned ^ ^0.2 ^ run particle cloud ~ ~ ~ ^ ^ ^100000000 0.000000005 0
# # [ImportKey]: NobwRALgngDgpmAXGAxgSwE4oDYIDRgCuhaAJkmAGaUBsATAKx0AsKAtDQOymlvOcBGdgENmDTnwBGpSnDjDhcZnDpgCAO2EBbBMkBhigAIBasDGEZtAZyTgUAe0LqISAQwIo4TuBhtgAbsLYhLrgAB5IAAwEUJEAvrEEFqRohNaIABwElhDmzohRYHDY2GgwlroCEQUYdjkQugVolgCixaXlzQCOhIHYUADKZh7kiJSB5fF44NDwFOhYuCbEZBQAnCySCgyrfHSifMz7kjQMcGySKJJwnOsCAMwCkswmmjoUhqoEZhZaabYOTiQdAE7k89R8iHAASCITA4Xy0TiCTASRSaQEdCyOQweVWBCKJTKFSqiVqwnqkQITVahI63V6AyGcBGY2wE1iAF0gA_3
#     # 円 2
#     particle explosion ^1.87721 ^0.5 ^-11.85226 1 0.3 1 0 1
#     particle explosion ^5.28733 ^0.5 ^-10.77238 1 0.3 1 0 1
#     particle explosion ^8.22764 ^0.5 ^-8.73532 1 0.3 1 0 1
#     particle explosion ^10.43689 ^0.5 ^-5.9221 1 0.3 1 0 1
#     particle explosion ^11.71878 ^0.5 ^-2.58267 1 0.3 1 0 1
#     particle explosion ^11.9594 ^0.5 ^0.98624 1 0.3 1 0 1
#     particle explosion ^11.13738 ^0.5 ^4.46752 1 0.3 1 0 1
#     particle explosion ^9.32575 ^0.5 ^7.55184 1 0.3 1 0 1
#     particle explosion ^6.68549 ^0.5 ^9.96515 1 0.3 1 0 1
#     particle explosion ^3.45119 ^0.5 ^11.49301 1 0.3 1 0 1
#     particle explosion ^-0.08976 ^0.5 ^11.99966 1 0.3 1 0 1
#     particle explosion ^-3.62273 ^0.5 ^11.4401 1 0.3 1 0 1
#     particle explosion ^-6.83381 ^0.5 ^9.86402 1 0.3 1 0 1
#     particle explosion ^-9.43768 ^0.5 ^7.41149 1 0.3 1 0 1
#     particle explosion ^-11.20297 ^0.5 ^4.30042 1 0.3 1 0 1
#     particle explosion ^-11.97282 ^0.5 ^0.80723 1 0.3 1 0 1
#     particle explosion ^-11.67883 ^0.5 ^-2.75769 1 0.3 1 0 1
#     particle explosion ^-10.34713 ^0.5 ^-6.07757 1 0.3 1 0 1
#     particle explosion ^-8.09605 ^0.5 ^-8.85743 1 0.3 1 0 1
#     particle explosion ^-5.12559 ^0.5 ^-10.85027 1 0.3 1 0 1
#     particle explosion ^-1.6997 ^0.5 ^-11.87902 1 0.3 1 0 1
#     # 円 1
#     particle explosion ^0 ^0.5 ^-8 1 0.3 1 0 1
#     particle explosion ^3.25389 ^0.5 ^-7.30836 1 0.3 1 0 1
#     particle explosion ^5.94516 ^0.5 ^-5.35304 1 0.3 1 0 1
#     particle explosion ^7.60845 ^0.5 ^-2.47214 1 0.3 1 0 1
#     particle explosion ^7.95618 ^0.5 ^0.83623 1 0.3 1 0 1
#     particle explosion ^6.9282 ^0.5 ^4 1 0.3 1 0 1
#     particle explosion ^4.70228 ^0.5 ^6.47214 1 0.3 1 0 1
#     particle explosion ^1.66329 ^0.5 ^7.82518 1 0.3 1 0 1
#     particle explosion ^-1.66329 ^0.5 ^7.82518 1 0.3 1 0 1
#     particle explosion ^-4.70228 ^0.5 ^6.47214 1 0.3 1 0 1
#     particle explosion ^-6.9282 ^0.5 ^4 1 0.3 1 0 1
#     particle explosion ^-7.95618 ^0.5 ^0.83623 1 0.3 1 0 1
#     particle explosion ^-7.60845 ^0.5 ^-2.47214 1 0.3 1 0 1
#     particle explosion ^-5.94516 ^0.5 ^-5.35304 1 0.3 1 0 1
#     particle explosion ^-3.25389 ^0.5 ^-7.30836 1 0.3 1 0 1

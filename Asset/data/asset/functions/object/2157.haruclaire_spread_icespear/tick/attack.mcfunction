#> asset:object/2157.haruclaire_spread_icespear/tick/attack
#
# Objectのtick時の処理
#
# @within asset:object/2157.haruclaire_spread_icespear/tick/

# 攻撃
    # ヒット判定
        data modify storage lib: args.dx set value 1.5
        data modify storage lib: args.dy set value 2
        data modify storage lib: args.dz set value 15
        data modify storage lib: args.selector set value "@a[tag=!PlayerShouldInvulnerable,distance=..50]"
        execute rotated 0 0 positioned ^ ^1 ^ run function lib:rotatable_dxyz/m with storage lib: args
        data modify storage lib: args.dx set value 1.5
        data modify storage lib: args.dy set value 2
        data modify storage lib: args.dz set value 30
        data modify storage lib: args.selector set value "@a[tag=!PlayerShouldInvulnerable,distance=..50]"
        execute rotated 45 0 positioned ^ ^1 ^ run function lib:rotatable_dxyz/m with storage lib: args
        data modify storage lib: args.dx set value 1.5
        data modify storage lib: args.dy set value 2
        data modify storage lib: args.dz set value 30
        data modify storage lib: args.selector set value "@a[tag=!PlayerShouldInvulnerable,distance=..50]"
        execute rotated 90 0 positioned ^ ^1 ^ run function lib:rotatable_dxyz/m with storage lib: args
        data modify storage lib: args.dx set value 1.5
        data modify storage lib: args.dy set value 2
        data modify storage lib: args.dz set value 30
        data modify storage lib: args.selector set value "@a[tag=!PlayerShouldInvulnerable,distance=..50]"
        execute rotated 135 0 positioned ^ ^1 ^ run function lib:rotatable_dxyz/m with storage lib: args
        tag @a[tag=DXYZ] add 2157.Hit
        tag @a[tag=DXYZ] remove DXYZ
    # ダメージ
        data modify storage api: Argument.Damage set from storage asset:context this.Damage
        data modify storage api: Argument.AttackType set value "Magic"
        data modify storage api: Argument.ElementType set value "Water"
        data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは つめたいひかりに つらぬかれた","with":[{"selector":"@s"}]}]'
        data modify storage api: Argument.MobUUID set from storage asset:context this.MobUUID
        function api:damage/modifier_manual
        execute as @a[tag=2157.Hit] run function api:damage/
        function api:damage/reset
        tag @a[tag=2157.Hit] remove 2157.Hit
    # 演出
        playsound minecraft:block.amethyst_cluster.break hostile @a ~ ~ ~ 1 2
        playsound minecraft:block.amethyst_cluster.break hostile @a ~ ~ ~ 1 2
        playsound minecraft:block.amethyst_block.break hostile @a ~ ~ ~ 1 0
        # 円型ベクトルパーティクル
        # 円 1
        execute rotated ~00 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000008 0
        execute rotated ~10 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000008 0
        execute rotated ~20 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000008 0
        execute rotated ~30 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000008 0
        execute rotated ~40 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000008 0
        execute rotated ~50 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000008 0
        execute rotated ~60 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000008 0
        execute rotated ~70 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000008 0
        execute rotated ~80 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000008 0
        execute rotated ~90 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000008 0
        execute rotated ~100 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000008 0
        execute rotated ~110 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000008 0
        execute rotated ~120 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000008 0
        execute rotated ~130 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000008 0
        execute rotated ~140 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000008 0
        execute rotated ~150 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000008 0
        execute rotated ~160 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000008 0
        execute rotated ~170 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000008 0
        execute rotated ~180 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000008 0
        execute rotated ~190 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000008 0
        execute rotated ~200 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000008 0
        execute rotated ~210 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000008 0
        execute rotated ~220 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000008 0
        execute rotated ~230 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000008 0
        execute rotated ~240 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000008 0
        execute rotated ~250 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000008 0
        execute rotated ~260 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000008 0
        execute rotated ~270 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000008 0
        execute rotated ~280 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000008 0
        execute rotated ~290 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000008 0
        execute rotated ~300 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000008 0
        execute rotated ~310 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000008 0
        execute rotated ~320 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000008 0
        execute rotated ~330 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000008 0
        execute rotated ~340 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000008 0
        execute rotated ~350 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000008 0
        # 円 1
        execute rotated ~00 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000012 0
        execute rotated ~10 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000012 0
        execute rotated ~20 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000012 0
        execute rotated ~30 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000012 0
        execute rotated ~40 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000012 0
        execute rotated ~50 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000012 0
        execute rotated ~60 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000012 0
        execute rotated ~70 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000012 0
        execute rotated ~80 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000012 0
        execute rotated ~90 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000012 0
        execute rotated ~100 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000012 0
        execute rotated ~110 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000012 0
        execute rotated ~120 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000012 0
        execute rotated ~130 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000012 0
        execute rotated ~140 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000012 0
        execute rotated ~150 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000012 0
        execute rotated ~160 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000012 0
        execute rotated ~170 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000012 0
        execute rotated ~180 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000012 0
        execute rotated ~190 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000012 0
        execute rotated ~200 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000012 0
        execute rotated ~210 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000012 0
        execute rotated ~220 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000012 0
        execute rotated ~230 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000012 0
        execute rotated ~240 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000012 0
        execute rotated ~250 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000012 0
        execute rotated ~260 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000012 0
        execute rotated ~270 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000012 0
        execute rotated ~280 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000012 0
        execute rotated ~290 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000012 0
        execute rotated ~300 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000012 0
        execute rotated ~310 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000012 0
        execute rotated ~320 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000012 0
        execute rotated ~330 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000012 0
        execute rotated ~340 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000012 0
        execute rotated ~350 0 positioned ^ ^1 ^ run particle end_rod ~ ~ ~ ^ ^ ^100000000 0.000000012 0
        # [ImportKey]: NobwRALgngDgpmAXGANgSwHYIDRgK55oAmSYARgIwDGArAMwBMdAbALQAcVAnA6wCxEyvAIYB2AAxlW4okXFMqwrnzrswuDMIC2CZIC3fAAQV1YGMIBO2gM5JwVAPZ4MEJBXa4AZuftbbYAG7CKHi64AAeSOK4UJEAvrG4EPZ+WsIYaDB4KMIQuhDmIZ7evsgeDFx0qmR8rB7MFB78ZESirFw0Em0eFFzCHqJkXMyUJoHBuqBgxKRlFVU1dQ1NLW0d4l09fQNDlKxkonzczAytoqI0bHweVEQcAsLSdB7iVMzs7xR0ZCYRiFFgMUQrDo4gS4GmpXKlXY1Vq9UafGarXanS43V6-UGwwobT47FEFXkrFoAn4NAobHYzEUbSoVDIcDINH6VDowh+SAYFAAdFzGOI6CoaDQhnwTtEkKwubzPgwBUKRcwxaIwVMSJC5jCFvDlsi1hsMdtsXsiMwZOJhDiaJacXxROVWMJmL1WHBROw8VwLVQGFcOYgQRKgTz2CwuBIeviuQK4KwKDRVRCwLNobDFgikatUeitljdgwiAIGMIvqxZIN+KzeDCPFxXTR2O0+OIKHABKJ-dK+XLBXRhaLxQDOTzu-K+4qxXRE+rk1D5nCloiVij1mjNpidjiiAwyHQuEQqK0hKIqPxTbcyOxhLdhe92jQxeJ5P66NzmKI9829wdH8xY-GgxBacZjnLUFwzZd9TXQ08y3ChxFDOBhHYR04GFMkiEaJs6DaURjj3BgaAYZhun9KUR1lMd+yVJggy7Sje2olRgI1VNtUXTMVwNXNNzjClFCVOt2gYBErykYRmlPPg3HaYR5BoF46DIwMh0QGhuXJcQuHgxUKRBRt-wTbBwRnFN53TXUs1XHMN2NChiMUZQpDlCgaj4Ph2hNYjiXYAsRPYa02xIXBfnImV+UYic6CDMLR0igdYgAXVwewUHVcJXCDCh4hSjwPCsOAXD+XAGQALzQOBzEiXA0CsAAhOBysqgBRABHPAghQKAAGUzCoOB1Q8IICpy8BoHgUgYFSqAAHN7AwR0MCoAALewqtwAgkzMsCLKXPVs3XI0Rg0bRdDAQAsTUAJcjACN9QAihkAZ4ZAGqGQAfhiMEwzEsLQbEQOxHGcTKwH65xKr8MYQj8X5-kBUEEjASwiDQPBvpUqwIAsIr-jgFB0BgArXCfXBvDR3JqsBtasCqxB3DAAArPAtBgAGyoqyn-jR8wZsKvx2c5oryGoegmEpbheAEIRHQkKQZDkBQlBUNRcAsGbSCSMBYdq5rsYyAq2o67Ger6gakCGlACpq+rGpZ3XOoN4R+sG4a4HiRKgA_3
        # 線 1
        particle explosion ^0 ^1 ^0 0.3 0.3 0.3 0.1 1
        particle explosion ^0 ^1 ^-1.76471 0.3 0.3 0.3 0.1 1
        particle explosion ^0 ^1 ^-3.52941 0.3 0.3 0.3 0.1 1
        particle explosion ^0 ^1 ^-5.29412 0.3 0.3 0.3 0.1 1
        particle explosion ^0 ^1 ^-7.05882 0.3 0.3 0.3 0.1 1
        particle explosion ^0 ^1 ^-8.82353 0.3 0.3 0.3 0.1 1
        particle explosion ^0 ^1 ^-10.58824 0.3 0.3 0.3 0.1 1
        particle explosion ^0 ^1 ^-12.35294 0.3 0.3 0.3 0.1 1
        particle explosion ^0 ^1 ^-14.11765 0.3 0.3 0.3 0.1 1
        particle explosion ^0 ^1 ^-15.88235 0.3 0.3 0.3 0.1 1
        particle explosion ^0 ^1 ^-17.64706 0.3 0.3 0.3 0.1 1
        particle explosion ^0 ^1 ^-19.41176 0.3 0.3 0.3 0.1 1
        particle explosion ^0 ^1 ^-21.17647 0.3 0.3 0.3 0.1 1
        particle explosion ^0 ^1 ^-22.94118 0.3 0.3 0.3 0.1 1
        particle explosion ^0 ^1 ^-24.70588 0.3 0.3 0.3 0.1 1
        particle explosion ^0 ^1 ^-26.47059 0.3 0.3 0.3 0.1 1
        particle explosion ^0 ^1 ^-28.23529 0.3 0.3 0.3 0.1 1
        particle explosion ^0 ^1 ^-30 0.3 0.3 0.3 0.1 1
        particle explosion ^0 ^1 ^0 0.3 0.3 0.3 0.1 1
        particle explosion ^1.24784 ^1 ^-1.24784 0.3 0.3 0.3 0.1 1
        particle explosion ^2.49567 ^1 ^-2.49567 0.3 0.3 0.3 0.1 1
        particle explosion ^3.74351 ^1 ^-3.74351 0.3 0.3 0.3 0.1 1
        particle explosion ^4.99134 ^1 ^-4.99134 0.3 0.3 0.3 0.1 1
        particle explosion ^6.23918 ^1 ^-6.23918 0.3 0.3 0.3 0.1 1
        particle explosion ^7.48701 ^1 ^-7.48701 0.3 0.3 0.3 0.1 1
        particle explosion ^8.73485 ^1 ^-8.73485 0.3 0.3 0.3 0.1 1
        particle explosion ^9.98268 ^1 ^-9.98268 0.3 0.3 0.3 0.1 1
        particle explosion ^11.23052 ^1 ^-11.23052 0.3 0.3 0.3 0.1 1
        particle explosion ^12.47835 ^1 ^-12.47835 0.3 0.3 0.3 0.1 1
        particle explosion ^13.72619 ^1 ^-13.72619 0.3 0.3 0.3 0.1 1
        particle explosion ^14.97403 ^1 ^-14.97403 0.3 0.3 0.3 0.1 1
        particle explosion ^16.22186 ^1 ^-16.22186 0.3 0.3 0.3 0.1 1
        particle explosion ^17.4697 ^1 ^-17.4697 0.3 0.3 0.3 0.1 1
        particle explosion ^18.71753 ^1 ^-18.71753 0.3 0.3 0.3 0.1 1
        particle explosion ^19.96537 ^1 ^-19.96537 0.3 0.3 0.3 0.1 1
        particle explosion ^21.2132 ^1 ^-21.2132 0.3 0.3 0.3 0.1 1
        particle explosion ^0 ^1 ^0 0.3 0.3 0.3 0.1 1
        particle explosion ^1.76471 ^1 ^0 0.3 0.3 0.3 0.1 1
        particle explosion ^3.52941 ^1 ^0 0.3 0.3 0.3 0.1 1
        particle explosion ^5.29412 ^1 ^0 0.3 0.3 0.3 0.1 1
        particle explosion ^7.05882 ^1 ^0 0.3 0.3 0.3 0.1 1
        particle explosion ^8.82353 ^1 ^0 0.3 0.3 0.3 0.1 1
        particle explosion ^10.58824 ^1 ^0 0.3 0.3 0.3 0.1 1
        particle explosion ^12.35294 ^1 ^0 0.3 0.3 0.3 0.1 1
        particle explosion ^14.11765 ^1 ^0 0.3 0.3 0.3 0.1 1
        particle explosion ^15.88235 ^1 ^0 0.3 0.3 0.3 0.1 1
        particle explosion ^17.64706 ^1 ^0 0.3 0.3 0.3 0.1 1
        particle explosion ^19.41176 ^1 ^0 0.3 0.3 0.3 0.1 1
        particle explosion ^21.17647 ^1 ^0 0.3 0.3 0.3 0.1 1
        particle explosion ^22.94118 ^1 ^0 0.3 0.3 0.3 0.1 1
        particle explosion ^24.70588 ^1 ^0 0.3 0.3 0.3 0.1 1
        particle explosion ^26.47059 ^1 ^0 0.3 0.3 0.3 0.1 1
        particle explosion ^28.23529 ^1 ^0 0.3 0.3 0.3 0.1 1
        particle explosion ^30 ^1 ^0 0.3 0.3 0.3 0.1 1
        particle explosion ^0 ^1 ^0 0.3 0.3 0.3 0.1 1
        particle explosion ^1.24784 ^1 ^1.24784 0.3 0.3 0.3 0.1 1
        particle explosion ^2.49567 ^1 ^2.49567 0.3 0.3 0.3 0.1 1
        particle explosion ^3.74351 ^1 ^3.74351 0.3 0.3 0.3 0.1 1
        particle explosion ^4.99134 ^1 ^4.99134 0.3 0.3 0.3 0.1 1
        particle explosion ^6.23918 ^1 ^6.23918 0.3 0.3 0.3 0.1 1
        particle explosion ^7.48701 ^1 ^7.48701 0.3 0.3 0.3 0.1 1
        particle explosion ^8.73485 ^1 ^8.73485 0.3 0.3 0.3 0.1 1
        particle explosion ^9.98268 ^1 ^9.98268 0.3 0.3 0.3 0.1 1
        particle explosion ^11.23052 ^1 ^11.23052 0.3 0.3 0.3 0.1 1
        particle explosion ^12.47835 ^1 ^12.47835 0.3 0.3 0.3 0.1 1
        particle explosion ^13.72619 ^1 ^13.72619 0.3 0.3 0.3 0.1 1
        particle explosion ^14.97403 ^1 ^14.97403 0.3 0.3 0.3 0.1 1
        particle explosion ^16.22186 ^1 ^16.22186 0.3 0.3 0.3 0.1 1
        particle explosion ^17.4697 ^1 ^17.4697 0.3 0.3 0.3 0.1 1
        particle explosion ^18.71753 ^1 ^18.71753 0.3 0.3 0.3 0.1 1
        particle explosion ^19.96537 ^1 ^19.96537 0.3 0.3 0.3 0.1 1
        particle explosion ^21.2132 ^1 ^21.2132 0.3 0.3 0.3 0.1 1
        particle explosion ^0 ^1 ^0 0.3 0.3 0.3 0.1 1
        particle explosion ^0 ^1 ^1.76471 0.3 0.3 0.3 0.1 1
        particle explosion ^0 ^1 ^3.52941 0.3 0.3 0.3 0.1 1
        particle explosion ^0 ^1 ^5.29412 0.3 0.3 0.3 0.1 1
        particle explosion ^0 ^1 ^7.05882 0.3 0.3 0.3 0.1 1
        particle explosion ^0 ^1 ^8.82353 0.3 0.3 0.3 0.1 1
        particle explosion ^0 ^1 ^10.58824 0.3 0.3 0.3 0.1 1
        particle explosion ^0 ^1 ^12.35294 0.3 0.3 0.3 0.1 1
        particle explosion ^0 ^1 ^14.11765 0.3 0.3 0.3 0.1 1
        particle explosion ^0 ^1 ^15.88235 0.3 0.3 0.3 0.1 1
        particle explosion ^0 ^1 ^17.64706 0.3 0.3 0.3 0.1 1
        particle explosion ^0 ^1 ^19.41176 0.3 0.3 0.3 0.1 1
        particle explosion ^0 ^1 ^21.17647 0.3 0.3 0.3 0.1 1
        particle explosion ^0 ^1 ^22.94118 0.3 0.3 0.3 0.1 1
        particle explosion ^0 ^1 ^24.70588 0.3 0.3 0.3 0.1 1
        particle explosion ^0 ^1 ^26.47059 0.3 0.3 0.3 0.1 1
        particle explosion ^0 ^1 ^28.23529 0.3 0.3 0.3 0.1 1
        particle explosion ^0 ^1 ^30 0.3 0.3 0.3 0.1 1
        particle explosion ^0 ^1 ^0 0.3 0.3 0.3 0.1 1
        particle explosion ^-1.24784 ^1 ^1.24784 0.3 0.3 0.3 0.1 1
        particle explosion ^-2.49567 ^1 ^2.49567 0.3 0.3 0.3 0.1 1
        particle explosion ^-3.74351 ^1 ^3.74351 0.3 0.3 0.3 0.1 1
        particle explosion ^-4.99134 ^1 ^4.99134 0.3 0.3 0.3 0.1 1
        particle explosion ^-6.23918 ^1 ^6.23918 0.3 0.3 0.3 0.1 1
        particle explosion ^-7.48701 ^1 ^7.48701 0.3 0.3 0.3 0.1 1
        particle explosion ^-8.73485 ^1 ^8.73485 0.3 0.3 0.3 0.1 1
        particle explosion ^-9.98268 ^1 ^9.98268 0.3 0.3 0.3 0.1 1
        particle explosion ^-11.23052 ^1 ^11.23052 0.3 0.3 0.3 0.1 1
        particle explosion ^-12.47835 ^1 ^12.47835 0.3 0.3 0.3 0.1 1
        particle explosion ^-13.72619 ^1 ^13.72619 0.3 0.3 0.3 0.1 1
        particle explosion ^-14.97403 ^1 ^14.97403 0.3 0.3 0.3 0.1 1
        particle explosion ^-16.22186 ^1 ^16.22186 0.3 0.3 0.3 0.1 1
        particle explosion ^-17.4697 ^1 ^17.4697 0.3 0.3 0.3 0.1 1
        particle explosion ^-18.71753 ^1 ^18.71753 0.3 0.3 0.3 0.1 1
        particle explosion ^-19.96537 ^1 ^19.96537 0.3 0.3 0.3 0.1 1
        particle explosion ^-21.2132 ^1 ^21.2132 0.3 0.3 0.3 0.1 1
        particle explosion ^0 ^1 ^0 0.3 0.3 0.3 0.1 1
        particle explosion ^-1.76471 ^1 ^0 0.3 0.3 0.3 0.1 1
        particle explosion ^-3.52941 ^1 ^0 0.3 0.3 0.3 0.1 1
        particle explosion ^-5.29412 ^1 ^0 0.3 0.3 0.3 0.1 1
        particle explosion ^-7.05882 ^1 ^0 0.3 0.3 0.3 0.1 1
        particle explosion ^-8.82353 ^1 ^0 0.3 0.3 0.3 0.1 1
        particle explosion ^-10.58824 ^1 ^0 0.3 0.3 0.3 0.1 1
        particle explosion ^-12.35294 ^1 ^0 0.3 0.3 0.3 0.1 1
        particle explosion ^-14.11765 ^1 ^0 0.3 0.3 0.3 0.1 1
        particle explosion ^-15.88235 ^1 ^0 0.3 0.3 0.3 0.1 1
        particle explosion ^-17.64706 ^1 ^0 0.3 0.3 0.3 0.1 1
        particle explosion ^-19.41176 ^1 ^0 0.3 0.3 0.3 0.1 1
        particle explosion ^-21.17647 ^1 ^0 0.3 0.3 0.3 0.1 1
        particle explosion ^-22.94118 ^1 ^0 0.3 0.3 0.3 0.1 1
        particle explosion ^-24.70588 ^1 ^0 0.3 0.3 0.3 0.1 1
        particle explosion ^-26.47059 ^1 ^0 0.3 0.3 0.3 0.1 1
        particle explosion ^-28.23529 ^1 ^0 0.3 0.3 0.3 0.1 1
        particle explosion ^-30 ^1 ^0 0.3 0.3 0.3 0.1 1
        particle explosion ^0 ^1 ^0 0.3 0.3 0.3 0.1 1
        particle explosion ^-1.24784 ^1 ^-1.24784 0.3 0.3 0.3 0.1 1
        particle explosion ^-2.49567 ^1 ^-2.49567 0.3 0.3 0.3 0.1 1
        particle explosion ^-3.74351 ^1 ^-3.74351 0.3 0.3 0.3 0.1 1
        particle explosion ^-4.99134 ^1 ^-4.99134 0.3 0.3 0.3 0.1 1
        particle explosion ^-6.23918 ^1 ^-6.23918 0.3 0.3 0.3 0.1 1
        particle explosion ^-7.48701 ^1 ^-7.48701 0.3 0.3 0.3 0.1 1
        particle explosion ^-8.73485 ^1 ^-8.73485 0.3 0.3 0.3 0.1 1
        particle explosion ^-9.98268 ^1 ^-9.98268 0.3 0.3 0.3 0.1 1
        particle explosion ^-11.23052 ^1 ^-11.23052 0.3 0.3 0.3 0.1 1
        particle explosion ^-12.47835 ^1 ^-12.47835 0.3 0.3 0.3 0.1 1
        particle explosion ^-13.72619 ^1 ^-13.72619 0.3 0.3 0.3 0.1 1
        particle explosion ^-14.97403 ^1 ^-14.97403 0.3 0.3 0.3 0.1 1
        particle explosion ^-16.22186 ^1 ^-16.22186 0.3 0.3 0.3 0.1 1
        particle explosion ^-17.4697 ^1 ^-17.4697 0.3 0.3 0.3 0.1 1
        particle explosion ^-18.71753 ^1 ^-18.71753 0.3 0.3 0.3 0.1 1
        particle explosion ^-19.96537 ^1 ^-19.96537 0.3 0.3 0.3 0.1 1
        particle explosion ^-21.2132 ^1 ^-21.2132 0.3 0.3 0.3 0.1 1

# # 演出召喚
#     tp @s ~ ~ ~ 0 ~
#     data modify storage api: Argument.ID set value 2164
#     data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
#     execute positioned ^ ^ ^ run function api:object/summon
#     tp @s ~ ~ ~ 45 ~
#     data modify storage api: Argument.ID set value 2164
#     data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
#     execute positioned ^ ^ ^ run function api:object/summon
#     tp @s ~ ~ ~ 90 ~
#     data modify storage api: Argument.ID set value 2164
#     data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
#     execute positioned ^ ^ ^ run function api:object/summon
#     tp @s ~ ~ ~ 135 ~
#     data modify storage api: Argument.ID set value 2164
#     data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
#     execute positioned ^ ^ ^ run function api:object/summon

#> asset:mob/0410.heiloang/tick/event/tornado/particle_attack_area
#
# 竜巻
#
# @within asset:mob/0410.heiloang/tick/event/tornado/

# 中心
    particle cloud ~ ~ ~ 0.1 0.1 0.1 0.2 2

# [ImportKey]: NobwRALgngDgpmAXGAxgSwE4oDYIDRgCuhaAJkmAKwooCMA7LSgJwC0lAZgBz2sAsHFKVZdaAQzitSHWlz60AzACY+C2krAEAdmIC2CZIDDFAAS1NYGGIx6AzknAoA9oS0QkC5gRRxXcDPbAANzFsQgNwAA8kAAYCKBiAXwSCa1I0QjtEegIbCCs3RFiwOGxsNBgbA1poooxHPIgDIrQbAFFS8srWgEdCEOwoAGVLb3JEDhDKpIBdIA_3
    # 円 1
    particle cloud ^0 ^ ^-7 0 0 0 0.05 1
    particle cloud ^1.12288 ^ ^-6.90935 0 0 0 0.05 1
    particle cloud ^2.21668 ^ ^-6.63976 0 0 0 0.05 1
    particle cloud ^3.25306 ^ ^-6.19819 0 0 0 0.05 1
    particle cloud ^4.2052 ^ ^-5.5961 0 0 0 0.05 1
    particle cloud ^5.04842 ^ ^-4.84907 0 0 0 0.05 1
    particle cloud ^5.76089 ^ ^-3.97645 0 0 0 0.05 1
    particle cloud ^6.32415 ^ ^-3.00085 0 0 0 0.05 1
    particle cloud ^6.72363 ^ ^-1.94752 0 0 0 0.05 1
    particle cloud ^6.94896 ^ ^-0.84376 0 0 0 0.05 1
    particle cloud ^6.99432 ^ ^0.28186 0 0 0 0.05 1
    particle cloud ^6.85853 ^ ^1.40018 0 0 0 0.05 1
    particle cloud ^6.54511 ^ ^2.48223 0 0 0 0.05 1
    particle cloud ^6.06218 ^ ^3.5 0 0 0 0.05 1
    particle cloud ^5.42223 ^ ^4.42712 0 0 0 0.05 1
    particle cloud ^4.64186 ^ ^5.23958 0 0 0 0.05 1
    particle cloud ^3.74126 ^ ^5.91633 0 0 0 0.05 1
    particle cloud ^2.74377 ^ ^6.43986 0 0 0 0.05 1
    particle cloud ^1.67521 ^ ^6.79659 0 0 0 0.05 1
    particle cloud ^0.56327 ^ ^6.9773 0 0 0 0.05 1
    particle cloud ^-0.56327 ^ ^6.9773 0 0 0 0.05 1
    particle cloud ^-1.67521 ^ ^6.79659 0 0 0 0.05 1
    particle cloud ^-2.74377 ^ ^6.43986 0 0 0 0.05 1
    particle cloud ^-3.74126 ^ ^5.91633 0 0 0 0.05 1
    particle cloud ^-4.64186 ^ ^5.23958 0 0 0 0.05 1
    particle cloud ^-5.42223 ^ ^4.42712 0 0 0 0.05 1
    particle cloud ^-6.06218 ^ ^3.5 0 0 0 0.05 1
    particle cloud ^-6.54511 ^ ^2.48223 0 0 0 0.05 1
    particle cloud ^-6.85853 ^ ^1.40018 0 0 0 0.05 1
    particle cloud ^-6.99432 ^ ^0.28186 0 0 0 0.05 1
    particle cloud ^-6.94896 ^ ^-0.84376 0 0 0 0.05 1
    particle cloud ^-6.72363 ^ ^-1.94752 0 0 0 0.05 1
    particle cloud ^-6.32415 ^ ^-3.00085 0 0 0 0.05 1
    particle cloud ^-5.76089 ^ ^-3.97645 0 0 0 0.05 1
    particle cloud ^-5.04842 ^ ^-4.84907 0 0 0 0.05 1
    particle cloud ^-4.2052 ^ ^-5.5961 0 0 0 0.05 1
    particle cloud ^-3.25306 ^ ^-6.19819 0 0 0 0.05 1
    particle cloud ^-2.21668 ^ ^-6.63976 0 0 0 0.05 1
    particle cloud ^-1.12288 ^ ^-6.90935 0 0 0 0.05 1

# 近くのプレイヤーを吸引
    execute as @a[tag=!PlayerShouldInvulnerable,distance=3..15] at @s facing entity @e[type=marker,tag=BE.CenterPosition] feet run tp @s ^ ^ ^0.1
    execute as @a[tag=!PlayerShouldInvulnerable,distance=16..20] at @s facing entity @e[type=marker,tag=BE.CenterPosition] feet run tp @s ^ ^ ^0.2
    execute as @a[tag=!PlayerShouldInvulnerable,distance=20..50] at @s facing entity @e[type=marker,tag=BE.CenterPosition] feet run tp @s ^ ^ ^0.3

# パーティクル
    tp @s ~ ~ ~ ~2 0
    particle cloud ^0 ^ ^-50 ^0 ^0 ^5000000000 0.00000000045 0 force
    particle cloud ^10.39558 ^ ^-48.90738 ^-1039558000. ^0 ^4890738000 0.00000000045 0 force
    particle cloud ^20.33683 ^ ^-45.67727 ^-2033683000 ^0 ^4567727000 0.00000000045 0 force
    particle cloud ^29.38926 ^ ^-40.45085 ^-2938926000 ^0 ^4045085000. 0.00000000045 0 force
    particle cloud ^37.15724 ^ ^-33.45653 ^-3715724000 ^0 ^3345653000 0.00000000045 0 force
    particle cloud ^43.30127 ^ ^-25 ^-4330127000 ^0 ^2500000000 0.00000000045 0 force
    particle cloud ^47.55283 ^ ^-15.45085 ^-4755283000 ^0 ^1545085000 0.00000000045 0 force
    particle cloud ^49.72609 ^ ^-5.22642 ^-4972609000 ^0 ^522642000 0.00000000045 0 force
    particle cloud ^49.72609 ^ ^5.22642 ^-4972609000 ^0 ^-522642000 0.00000000045 0 force
    particle cloud ^47.55283 ^ ^15.45085 ^-4755283000 ^0 ^-1545085000 0.00000000045 0 force
    particle cloud ^43.30127 ^ ^25 ^-4330127000 ^0 ^-2500000000 0.00000000045 0 force
    particle cloud ^37.15724 ^ ^33.45653 ^-3715724000 ^0 ^-3345653000 0.00000000045 0 force
    particle cloud ^29.38926 ^ ^40.45085 ^-2938926000 ^0 ^-4045085000. 0.00000000045 0 force
    particle cloud ^20.33683 ^ ^45.67727 ^-2033683000 ^0 ^-4567727000 0.00000000045 0 force
    particle cloud ^10.39558 ^ ^48.90738 ^-1039558000. ^0 ^-4890738000 0.00000000045 0 force
    particle cloud ^0 ^ ^50 ^0 ^0 ^-5000000000 0.00000000045 0 force
    particle cloud ^-10.39558 ^ ^48.90738 ^1039558000. ^0 ^-4890738000 0.00000000045 0 force
    particle cloud ^-20.33683 ^ ^45.67727 ^2033683000 ^0 ^-4567727000 0.00000000045 0 force
    particle cloud ^-29.38926 ^ ^40.45085 ^2938926000 ^0 ^-4045085000. 0.00000000045 0 force
    particle cloud ^-37.15724 ^ ^33.45653 ^3715724000 ^0 ^-3345653000 0.00000000045 0 force
    particle cloud ^-43.30127 ^ ^25 ^4330127000 ^0 ^-2500000000 0.00000000045 0 force
    particle cloud ^-47.55283 ^ ^15.45085 ^4755283000 ^0 ^-1545085000 0.00000000045 0 force
    particle cloud ^-49.72609 ^ ^5.22642 ^4972609000 ^0 ^-522642000 0.00000000045 0 force
    particle cloud ^-49.72609 ^ ^-5.22642 ^4972609000 ^0 ^522642000 0.00000000045 0 force
    particle cloud ^-47.55283 ^ ^-15.45085 ^4755283000 ^0 ^1545085000 0.00000000045 0 force
    particle cloud ^-43.30127 ^ ^-25 ^4330127000 ^0 ^2500000000 0.00000000045 0 force
    particle cloud ^-37.15724 ^ ^-33.45653 ^3715724000 ^0 ^3345653000 0.00000000045 0 force
    particle cloud ^-29.38926 ^ ^-40.45085 ^2938926000 ^0 ^4045085000. 0.00000000045 0 force
    particle cloud ^-20.33683 ^ ^-45.67727 ^2033683000 ^0 ^4567727000 0.00000000045 0 force
    particle cloud ^-10.39558 ^ ^-48.90738 ^1039558000. ^0 ^4890738000 0.00000000045 0 force

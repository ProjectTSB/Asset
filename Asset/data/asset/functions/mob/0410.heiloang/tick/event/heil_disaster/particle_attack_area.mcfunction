#> asset:mob/0410.heiloang/tick/event/heil_disaster/particle_attack_area
#
# 竜巻
#
# @within asset:mob/0410.heiloang/tick/event/tornado/

# 中心
    particle cloud ~ ~ ~ 0.1 0.1 0.1 0.2 2

# [ImportKey]: NobwRALgngDgpmAXGAxgSwE4oDYIDRgCuhaAJkmAJwCMlArNXXAMwC0KALNQIascBM-Oq0oAjAGYB2VgAZKADhkdJy8aWbkCAO24BbBMkBhigAJqYAjG4Y9AZyTgUAe0JaISZpQIo4ruBntgAG7c2IQG4AAeSDIEUNEAvvEE1qRohHaI1DFgNhBWbojZcNjYaDA2BlnZGI55EAbZaDYAoiVlFc0AjoQh2FAAypbe5IjiIRWJALpAA_3
# 円 1
    particle cloud ^0 ^ ^-10 0 0 0 0.05 1
    particle cloud ^1.60411 ^ ^-9.8705 0 0 0 0.05 1
    particle cloud ^3.16668 ^ ^-9.48536 0 0 0 0.05 1
    particle cloud ^4.64723 ^ ^-8.85456 0 0 0 0.05 1
    particle cloud ^6.00742 ^ ^-7.99443 0 0 0 0.05 1
    particle cloud ^7.21202 ^ ^-6.92724 0 0 0 0.05 1
    particle cloud ^8.22984 ^ ^-5.68065 0 0 0 0.05 1
    particle cloud ^9.0345 ^ ^-4.28693 0 0 0 0.05 1
    particle cloud ^9.60518 ^ ^-2.78217 0 0 0 0.05 1
    particle cloud ^9.92709 ^ ^-1.20537 0 0 0 0.05 1
    particle cloud ^9.99189 ^ ^0.40266 0 0 0 0.05 1
    particle cloud ^9.79791 ^ ^2.00026 0 0 0 0.05 1
    particle cloud ^9.35016 ^ ^3.54605 0 0 0 0.05 1
    particle cloud ^8.66025 ^ ^5 0 0 0 0.05 1
    particle cloud ^7.74605 ^ ^6.32445 0 0 0 0.05 1
    particle cloud ^6.63123 ^ ^7.48511 0 0 0 0.05 1
    particle cloud ^5.34466 ^ ^8.4519 0 0 0 0.05 1
    particle cloud ^3.91967 ^ ^9.19979 0 0 0 0.05 1
    particle cloud ^2.39316 ^ ^9.70942 0 0 0 0.05 1
    particle cloud ^0.80467 ^ ^9.96757 0 0 0 0.05 1
    particle cloud ^-0.80467 ^ ^9.96757 0 0 0 0.05 1
    particle cloud ^-2.39316 ^ ^9.70942 0 0 0 0.05 1
    particle cloud ^-3.91967 ^ ^9.19979 0 0 0 0.05 1
    particle cloud ^-5.34466 ^ ^8.4519 0 0 0 0.05 1
    particle cloud ^-6.63123 ^ ^7.48511 0 0 0 0.05 1
    particle cloud ^-7.74605 ^ ^6.32445 0 0 0 0.05 1
    particle cloud ^-8.66025 ^ ^5 0 0 0 0.05 1
    particle cloud ^-9.35016 ^ ^3.54605 0 0 0 0.05 1
    particle cloud ^-9.79791 ^ ^2.00026 0 0 0 0.05 1
    particle cloud ^-9.99189 ^ ^0.40266 0 0 0 0.05 1
    particle cloud ^-9.92709 ^ ^-1.20537 0 0 0 0.05 1
    particle cloud ^-9.60518 ^ ^-2.78217 0 0 0 0.05 1
    particle cloud ^-9.0345 ^ ^-4.28693 0 0 0 0.05 1
    particle cloud ^-8.22984 ^ ^-5.68065 0 0 0 0.05 1
    particle cloud ^-7.21202 ^ ^-6.92724 0 0 0 0.05 1
    particle cloud ^-6.00742 ^ ^-7.99443 0 0 0 0.05 1
    particle cloud ^-4.64723 ^ ^-8.85456 0 0 0 0.05 1
    particle cloud ^-3.16668 ^ ^-9.48536 0 0 0 0.05 1
    particle cloud ^-1.60411 ^ ^-9.8705 0 0 0 0.05 1

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

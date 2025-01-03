#> asset:object/2117.heiloang_tornado/tick/move_1
#
# Objectのtick時の処理
#
# @within asset:object/2117.heiloang_tornado/tick/

# 近くのプレイヤーを吸引
    execute as @a[tag=!PlayerShouldInvulnerable,distance=3..13] at @s facing entity @e[type=item_display,tag=2117.Pos,limit=1] feet run tp @s ^ ^ ^0.4
    execute as @a[tag=!PlayerShouldInvulnerable,distance=12.9..20] at @s facing entity @e[type=item_display,tag=2117.Pos,limit=1] feet run tp @s ^ ^ ^1.0
    execute as @a[tag=!PlayerShouldInvulnerable,distance=19.9..50] at @s facing entity @e[type=item_display,tag=2117.Pos,limit=1] feet run tp @s ^ ^ ^1.6

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

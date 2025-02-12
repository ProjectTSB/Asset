#> asset:mob/0410.heiloang/tick/event/power_charge/particle_ring
#
# Objectのtick時の処理
#
# @within asset:mob/0410.heiloang/tick/event/power_charge/

# 一定間隔
    scoreboard players operation $Interval Temporary = @s BE.EventTimer
    scoreboard players operation $Interval Temporary %= $8 Const
    execute unless score $Interval Temporary matches 0 run return run scoreboard players reset $Interval Temporary
    scoreboard players reset $Interval Temporary

# パーティクル
    particle end_rod ^0 ^ ^-50 ^0 ^0 ^5000000000 0.0000000008 0 force
    particle end_rod ^10.39558 ^ ^-48.90738 ^-1039558000. ^0 ^4890738000 0.0000000008 0 force
    particle end_rod ^20.33683 ^ ^-45.67727 ^-2033683000 ^0 ^4567727000 0.0000000008 0 force
    particle end_rod ^29.38926 ^ ^-40.45085 ^-2938926000 ^0 ^4045085000. 0.0000000008 0 force
    particle end_rod ^37.15724 ^ ^-33.45653 ^-3715724000 ^0 ^3345653000 0.0000000008 0 force
    particle end_rod ^43.30127 ^ ^-25 ^-4330127000 ^0 ^2500000000 0.0000000008 0 force
    particle end_rod ^47.55283 ^ ^-15.45085 ^-4755283000 ^0 ^1545085000 0.0000000008 0 force
    particle end_rod ^49.72609 ^ ^-5.22642 ^-4972609000 ^0 ^522642000 0.0000000008 0 force
    particle end_rod ^49.72609 ^ ^5.22642 ^-4972609000 ^0 ^-522642000 0.0000000008 0 force
    particle end_rod ^47.55283 ^ ^15.45085 ^-4755283000 ^0 ^-1545085000 0.0000000008 0 force
    particle end_rod ^43.30127 ^ ^25 ^-4330127000 ^0 ^-2500000000 0.0000000008 0 force
    particle end_rod ^37.15724 ^ ^33.45653 ^-3715724000 ^0 ^-3345653000 0.0000000008 0 force
    particle end_rod ^29.38926 ^ ^40.45085 ^-2938926000 ^0 ^-4045085000. 0.0000000008 0 force
    particle end_rod ^20.33683 ^ ^45.67727 ^-2033683000 ^0 ^-4567727000 0.0000000008 0 force
    particle end_rod ^10.39558 ^ ^48.90738 ^-1039558000. ^0 ^-4890738000 0.0000000008 0 force
    particle end_rod ^0 ^ ^50 ^0 ^0 ^-5000000000 0.0000000008 0 force
    particle end_rod ^-10.39558 ^ ^48.90738 ^1039558000. ^0 ^-4890738000 0.0000000008 0 force
    particle end_rod ^-20.33683 ^ ^45.67727 ^2033683000 ^0 ^-4567727000 0.0000000008 0 force
    particle end_rod ^-29.38926 ^ ^40.45085 ^2938926000 ^0 ^-4045085000. 0.0000000008 0 force
    particle end_rod ^-37.15724 ^ ^33.45653 ^3715724000 ^0 ^-3345653000 0.0000000008 0 force
    particle end_rod ^-43.30127 ^ ^25 ^4330127000 ^0 ^-2500000000 0.0000000008 0 force
    particle end_rod ^-47.55283 ^ ^15.45085 ^4755283000 ^0 ^-1545085000 0.0000000008 0 force
    particle end_rod ^-49.72609 ^ ^5.22642 ^4972609000 ^0 ^-522642000 0.0000000008 0 force
    particle end_rod ^-49.72609 ^ ^-5.22642 ^4972609000 ^0 ^522642000 0.0000000008 0 force
    particle end_rod ^-47.55283 ^ ^-15.45085 ^4755283000 ^0 ^1545085000 0.0000000008 0 force
    particle end_rod ^-43.30127 ^ ^-25 ^4330127000 ^0 ^2500000000 0.0000000008 0 force
    particle end_rod ^-37.15724 ^ ^-33.45653 ^3715724000 ^0 ^3345653000 0.0000000008 0 force
    particle end_rod ^-29.38926 ^ ^-40.45085 ^2938926000 ^0 ^4045085000. 0.0000000008 0 force
    particle end_rod ^-20.33683 ^ ^-45.67727 ^2033683000 ^0 ^4567727000 0.0000000008 0 force
    particle end_rod ^-10.39558 ^ ^-48.90738 ^1039558000. ^0 ^4890738000 0.0000000008 0 force

#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/32_1_sync_throw/6.5.particle_line_burst
#
# アニメーションのイベントハンドラ Kt斬り下がり 演出
#
# @within
#    function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/32_1_sync_throw/5.2.damage_burst

# [ImportKey]: NobwRALgngDgpmAXGANgSwHYIDRgK55oAmSYArAGYAsARgMZECcADALQBsATAOzetVEAzGwAcjMayKd2ZOjJHt23HGAwBDALYJkgLd8ABAEYwuGGoBOmgM5JwdAPZ4MEJJwO4KZuxptgAbmpQ8bXAADyRmXCgkVgMRAF843Ag7H39A4LAwxAiwKMRYhNw7CgpLOGds3Bo4AC80ODNw3DRLACFa+rMAUQBHPACUKABlUzo4EkQKALKEgF0gA_3
# 線 1
particle explosion ^0 ^ ^-18 0.4 0.4 0.4 0 1
particle explosion ^0 ^ ^-16.2 0.4 0.4 0.4 0 1
particle explosion ^0 ^ ^-14.4 0.4 0.4 0.4 0 1
particle explosion ^0 ^ ^-12.6 0.4 0.4 0.4 0 1
particle explosion ^0 ^ ^-10.8 0.4 0.4 0.4 0 1
particle explosion ^0 ^ ^-9 0.4 0.4 0.4 0 1
particle explosion ^0 ^ ^-7.2 0.4 0.4 0.4 0 1
particle explosion ^0 ^ ^-5.4 0.4 0.4 0.4 0 1
particle explosion ^0 ^ ^-3.6 0.4 0.4 0.4 0 1
particle explosion ^0 ^ ^-1.8 0.4 0.4 0.4 0 1
particle explosion ^0 ^ ^0 0.4 0.4 0.4 0 1
particle explosion ^0 ^ ^1.8 0.4 0.4 0.4 0 1
particle explosion ^0 ^ ^3.6 0.4 0.4 0.4 0 1
particle explosion ^0 ^ ^5.4 0.4 0.4 0.4 0 1
particle explosion ^0 ^ ^7.2 0.4 0.4 0.4 0 1
particle explosion ^0 ^ ^9 0.4 0.4 0.4 0 1
particle explosion ^0 ^ ^10.8 0.4 0.4 0.4 0 1
particle explosion ^0 ^ ^12.6 0.4 0.4 0.4 0 1
particle explosion ^0 ^ ^14.4 0.4 0.4 0.4 0 1
particle explosion ^0 ^ ^16.2 0.4 0.4 0.4 0 1
particle explosion ^0 ^ ^18 0.4 0.4 0.4 0 1
# [ImportKey]: NobwRALgngDgpmAXGANgSwHYIDRgK55oAmSYArAGYAsARgMZECcADALQBsATAOzetVEAzGwAcjMayKd2ZOjJHt23HGAwBDALYJkgLd8ABAEYwuGGoBOmgM5JwdAPZ4MEJJwO4KZuxptgAbmpQ8bXAADyRmXCgkVgMRAF843Ag7H39A4LAwxAiwKMRYhNw7CgpLOGds3Bo4AC80ODNw3DRLACFa+rMAUQBHPACUKABlUzo4EkQKALKEgF0gA_3
# 線 1
particle cloud ^0 ^ ^-18 0.2 0.2 0.2 0.2 3
particle cloud ^0 ^ ^-16.2 0.2 0.2 0.2 0.2 3
particle cloud ^0 ^ ^-14.4 0.2 0.2 0.2 0.2 3
particle cloud ^0 ^ ^-12.6 0.2 0.2 0.2 0.2 3
particle cloud ^0 ^ ^-10.8 0.2 0.2 0.2 0.2 3
particle cloud ^0 ^ ^-9 0.2 0.2 0.2 0.2 3
particle cloud ^0 ^ ^-7.2 0.2 0.2 0.2 0.2 3
particle cloud ^0 ^ ^-5.4 0.2 0.2 0.2 0.2 3
particle cloud ^0 ^ ^-3.6 0.2 0.2 0.2 0.2 3
particle cloud ^0 ^ ^-1.8 0.2 0.2 0.2 0.2 3
particle cloud ^0 ^ ^0 0.2 0.2 0.2 0.2 3
particle cloud ^0 ^ ^1.8 0.2 0.2 0.2 0.2 3
particle cloud ^0 ^ ^3.6 0.2 0.2 0.2 0.2 3
particle cloud ^0 ^ ^5.4 0.2 0.2 0.2 0.2 3
particle cloud ^0 ^ ^7.2 0.2 0.2 0.2 0.2 3
particle cloud ^0 ^ ^9 0.2 0.2 0.2 0.2 3
particle cloud ^0 ^ ^10.8 0.2 0.2 0.2 0.2 3
particle cloud ^0 ^ ^12.6 0.2 0.2 0.2 0.2 3
particle cloud ^0 ^ ^14.4 0.2 0.2 0.2 0.2 3
particle cloud ^0 ^ ^16.2 0.2 0.2 0.2 0.2 3
particle cloud ^0 ^ ^18 0.2 0.2 0.2 0.2 3
# [ImportKey]: NobwRALgngDgpmAXGANgSwHYIDRgK55oAmSYArAGYAsARgMZECcADALQBsATAOzetVEAzGwAcjMayKd2ZOjJHt23HGAwBDALYJkgLd8ABAEYwuGGoBOmgM5JwdAPZ4MEJAe64KZuxptgAbmpQ8bXAADyRmXCgkVgMRAF843Ag7H39A4LAwxAiwKMRYhNw7CgpLOGds3Bo4AC80ODNw3DRLACFa+rMAUQBHPACUKABlUzo4EkQKALKEgF0gA_3
# 線 1
execute positioned ^0 ^ ^-18 run tag @a[tag=!PlayerShouldInvulnerable,distance=..3] add 9G.Temp.Target.Attack
execute positioned ^0 ^ ^-15.75 run tag @a[tag=!PlayerShouldInvulnerable,distance=..3] add 9G.Temp.Target.Attack
execute positioned ^0 ^ ^-13.5 run tag @a[tag=!PlayerShouldInvulnerable,distance=..3] add 9G.Temp.Target.Attack
execute positioned ^0 ^ ^-11.25 run tag @a[tag=!PlayerShouldInvulnerable,distance=..3] add 9G.Temp.Target.Attack
execute positioned ^0 ^ ^-9 run tag @a[tag=!PlayerShouldInvulnerable,distance=..3] add 9G.Temp.Target.Attack
execute positioned ^0 ^ ^-6.75 run tag @a[tag=!PlayerShouldInvulnerable,distance=..3] add 9G.Temp.Target.Attack
execute positioned ^0 ^ ^-4.5 run tag @a[tag=!PlayerShouldInvulnerable,distance=..3] add 9G.Temp.Target.Attack
execute positioned ^0 ^ ^-2.25 run tag @a[tag=!PlayerShouldInvulnerable,distance=..3] add 9G.Temp.Target.Attack
execute positioned ^0 ^ ^0 run tag @a[tag=!PlayerShouldInvulnerable,distance=..3] add 9G.Temp.Target.Attack
execute positioned ^0 ^ ^2.25 run tag @a[tag=!PlayerShouldInvulnerable,distance=..3] add 9G.Temp.Target.Attack
execute positioned ^0 ^ ^4.5 run tag @a[tag=!PlayerShouldInvulnerable,distance=..3] add 9G.Temp.Target.Attack
execute positioned ^0 ^ ^6.75 run tag @a[tag=!PlayerShouldInvulnerable,distance=..3] add 9G.Temp.Target.Attack
execute positioned ^0 ^ ^9 run tag @a[tag=!PlayerShouldInvulnerable,distance=..3] add 9G.Temp.Target.Attack
execute positioned ^0 ^ ^11.25 run tag @a[tag=!PlayerShouldInvulnerable,distance=..3] add 9G.Temp.Target.Attack
execute positioned ^0 ^ ^13.5 run tag @a[tag=!PlayerShouldInvulnerable,distance=..3] add 9G.Temp.Target.Attack
execute positioned ^0 ^ ^15.75 run tag @a[tag=!PlayerShouldInvulnerable,distance=..3] add 9G.Temp.Target.Attack
execute positioned ^0 ^ ^18 run tag @a[tag=!PlayerShouldInvulnerable,distance=..3] add 9G.Temp.Target.Attack

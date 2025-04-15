#> asset:object/1067.jewel_rod_of_horai/tick/attack/particle_0
#
# @within function
#   asset:object/1067.jewel_rod_of_horai/tick/

# [ImportKey]: NobwRALgngDgpmAXGAxgSwE4oDYIDRgCuhaAJkmKXAOwDMKADAEwCMAtNQEYCGcbALNWpM23AJwBWWm060W3AGycAHHG5NOLMAQB23ALYJkgMMUABFoIxuGAwGck4FAHtCOiEloMCKOG7gYHMAA3bmxCI3AADyQvMCgYgF8EghtSNEJ7RBYAOiYCWwhrd0RYuGxsNBhbIxYGWIwnQogjWLRbAFFyyur2gEdCUOwoAGUrH3JEADNQ6qS8cGh4CgqdfCISCbBqBgkxJmpVNloaEX4WMQVRMRZpam5JpiVJiW4Xye0wPUMKQC3fcw+rDZ9JlHC43EhagRJg19IEQmEImBoog2AxshICPEUWixNQ5pAnHDQuFAsjUejMTFsrj8U5JpNqsVYpw4AAvND+JDkjFgNoAITZHIwfQG5RGYzgE2m2FmyQWsCMYBWa2IZAoygYnGoCjo1DYaklAn4pAkMk4uLYTHEYi1z2oKCoHy+ir+7DQOiCAOsdkCzlcxUhYGhTlhiHA8JJYaRVJ5WPJNOSBKJCNJMcpJWpeMTdIZcCZBBZ7M5GZ5-MF-hFg3F3HGSGlsvmkAVy3dKo2FDEkwYkokLD4KGU1D4-FoElN3G4pE4bBYnAkKHnXcmNrEToMLtMTC9QJBqDBAdiwdD4eJiORsTjOSY+IghKjEbPMXTV9p9MZT7AhaFH7LReF-SrUYa0lOsZjgJIAF0gA_3
# 円 1
    particle dust 0 0 0 0.5 ^0 ^-1.2 ^ 0 0 0 0 2
    particle dust 0 0 0 0.5 ^0.24949 ^-1.17378 ^ 0 0 0 0 2
    particle dust 0 0 0 0.5 ^0.48808 ^-1.09625 ^ 0 0 0 0 2
    particle dust 0 0 0 0.5 ^0.70534 ^-0.97082 ^ 0 0 0 0 2
    particle dust 0 0 0 0.5 ^0.89177 ^-0.80296 ^ 0 0 0 0 2
    particle dust 0 0 0 0.5 ^1.03923 ^-0.6 ^ 0 0 0 0 2
    particle dust 0 0 0 0.5 ^1.14127 ^-0.37082 ^ 0 0 0 0 2
    particle dust 0 0 0 0.5 ^1.19343 ^-0.12543 ^ 0 0 0 0 2
    particle dust 0 0 0 0.5 ^1.19343 ^0.12543 ^ 0 0 0 0 2
    particle dust 0 0 0 0.5 ^1.14127 ^0.37082 ^ 0 0 0 0 2
    particle dust 0 0 0 0.5 ^1.03923 ^0.6 ^ 0 0 0 0 2
    particle dust 0 0 0 0.5 ^0.89177 ^0.80296 ^ 0 0 0 0 2
    particle dust 0 0 0 0.5 ^0.70534 ^0.97082 ^ 0 0 0 0 2
    particle dust 0 0 0 0.5 ^0.48808 ^1.09625 ^ 0 0 0 0 2
    particle dust 0 0 0 0.5 ^0.24949 ^1.17378 ^ 0 0 0 0 2
    particle dust 0 0 0 0.5 ^0 ^1.2 ^ 0 0 0 0 2
    particle dust 0 0 0 0.5 ^-0.24949 ^1.17378 ^ 0 0 0 0 2
    particle dust 0 0 0 0.5 ^-0.48808 ^1.09625 ^ 0 0 0 0 2
    particle dust 0 0 0 0.5 ^-0.70534 ^0.97082 ^ 0 0 0 0 2
    particle dust 0 0 0 0.5 ^-0.89177 ^0.80296 ^ 0 0 0 0 2
    particle dust 0 0 0 0.5 ^-1.03923 ^0.6 ^ 0 0 0 0 2
    particle dust 0 0 0 0.5 ^-1.14127 ^0.37082 ^ 0 0 0 0 2
    particle dust 0 0 0 0.5 ^-1.19343 ^0.12543 ^ 0 0 0 0 2
    particle dust 0 0 0 0.5 ^-1.19343 ^-0.12543 ^ 0 0 0 0 2
    particle dust 0 0 0 0.5 ^-1.14127 ^-0.37082 ^ 0 0 0 0 2
    particle dust 0 0 0 0.5 ^-1.03923 ^-0.6 ^ 0 0 0 0 2
    particle dust 0 0 0 0.5 ^-0.89177 ^-0.80296 ^ 0 0 0 0 2
    particle dust 0 0 0 0.5 ^-0.70534 ^-0.97082 ^ 0 0 0 0 2
    particle dust 0 0 0 0.5 ^-0.48808 ^-1.09625 ^ 0 0 0 0 2
    particle dust 0 0 0 0.5 ^-0.24949 ^-1.17378 ^ 0 0 0 0 2

# 三日月パーティクル
    execute positioned ^0.95106 ^0.30902 ^ run function asset:object/1067.jewel_rod_of_horai/tick/attack/particle_crescent_red

# 攻撃対象への攻撃予告パーティクル
    execute positioned ^0.95106 ^0.30902 ^ as @e[type=#lib:living,tag=MS.AttackTarget,distance=..25,limit=1] facing entity @s eyes run function asset:object/1067.jewel_rod_of_horai/tick/attack/particle_beam_white

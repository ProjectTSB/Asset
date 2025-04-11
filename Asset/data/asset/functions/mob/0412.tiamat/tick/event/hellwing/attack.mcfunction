#> asset:mob/0412.tiamat/tick/event/hellwing/attack
#
# ヘルウィング
#
# @within
#    function asset:mob/0412.tiamat/tick/event/hellwing/
#    function asset:mob/0412.tiamat/tick/event/terzetto_succession_dive/

# ヒット判定
    tag @a[tag=DXYZ] remove DXYZ
    data modify storage lib: args.dx set value 5
    data modify storage lib: args.dy set value 5
    data modify storage lib: args.dz set value 30
    data modify storage lib: args.selector set value "@a[tag=!PlayerShouldInvulnerable,distance=..40]"
    execute positioned ^ ^ ^10 run function lib:rotatable_dxyz/m with storage lib: args
# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage.HellWing
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Water"
    function api:damage/modifier
    execute as @a[tag=DXYZ] run function api:damage/
    function api:damage/reset
    tag @a remove DXYZ

# 演出
    playsound entity.breeze.shoot hostile @a ~ ~ ~ 3 0.7
# 円型ベクトルパーティクル
# 円 1
    execute rotated ~00 0 positioned ^ ^3 ^1.8 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.00000004 0
    execute rotated ~10 0 positioned ^ ^3 ^1.8 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.00000004 0
    execute rotated ~20 0 positioned ^ ^3 ^1.8 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.00000004 0
    execute rotated ~30 0 positioned ^ ^3 ^1.8 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.00000004 0
    execute rotated ~40 0 positioned ^ ^3 ^1.8 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.00000004 0
    execute rotated ~50 0 positioned ^ ^3 ^1.8 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.00000004 0
    execute rotated ~60 0 positioned ^ ^3 ^1.8 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.00000004 0
    execute rotated ~70 0 positioned ^ ^3 ^1.8 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.00000004 0
    execute rotated ~80 0 positioned ^ ^3 ^1.8 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.00000004 0
    execute rotated ~90 0 positioned ^ ^3 ^1.8 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.00000004 0
    execute rotated ~100 0 positioned ^ ^3 ^1.8 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.00000004 0
    execute rotated ~110 0 positioned ^ ^3 ^1.8 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.00000004 0
    execute rotated ~120 0 positioned ^ ^3 ^1.8 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.00000004 0
    execute rotated ~130 0 positioned ^ ^3 ^1.8 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.00000004 0
    execute rotated ~140 0 positioned ^ ^3 ^1.8 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.00000004 0
    execute rotated ~150 0 positioned ^ ^3 ^1.8 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.00000004 0
    execute rotated ~160 0 positioned ^ ^3 ^1.8 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.00000004 0
    execute rotated ~170 0 positioned ^ ^3 ^1.8 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.00000004 0
    execute rotated ~180 0 positioned ^ ^3 ^1.8 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.00000004 0
    execute rotated ~190 0 positioned ^ ^3 ^1.8 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.00000004 0
    execute rotated ~200 0 positioned ^ ^3 ^1.8 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.00000004 0
    execute rotated ~210 0 positioned ^ ^3 ^1.8 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.00000004 0
    execute rotated ~220 0 positioned ^ ^3 ^1.8 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.00000004 0
    execute rotated ~230 0 positioned ^ ^3 ^1.8 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.00000004 0
    execute rotated ~240 0 positioned ^ ^3 ^1.8 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.00000004 0
    execute rotated ~250 0 positioned ^ ^3 ^1.8 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.00000004 0
    execute rotated ~260 0 positioned ^ ^3 ^1.8 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.00000004 0
    execute rotated ~270 0 positioned ^ ^3 ^1.8 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.00000004 0
    execute rotated ~280 0 positioned ^ ^3 ^1.8 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.00000004 0
    execute rotated ~290 0 positioned ^ ^3 ^1.8 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.00000004 0
    execute rotated ~300 0 positioned ^ ^3 ^1.8 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.00000004 0
    execute rotated ~310 0 positioned ^ ^3 ^1.8 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.00000004 0
    execute rotated ~320 0 positioned ^ ^3 ^1.8 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.00000004 0
    execute rotated ~330 0 positioned ^ ^3 ^1.8 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.00000004 0
    execute rotated ~340 0 positioned ^ ^3 ^1.8 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.00000004 0
    execute rotated ~350 0 positioned ^ ^3 ^1.8 run particle cloud ~ ~ ~ ^ ^ ^100000000 0.00000004 0

# [ImportKey]: NobwRALgngDgpmAXGANgSwHYIDRgK55oAmSYAbAMYUCcA7ACwAMFAtAEYBMR1L9HZZdgEYAZgFYWAZmr9GIgBzz61RmTC4MAQwC2CZIC3fAARD1YGJoBOOgM5JwFAPZ4MEJB0a4RFh9rtgAbpooeHrgAB5IHmBQSCzuAL7xuBAOfoHBoWARiFExiGSMibgOIiLWcK45uGxwAF5ocBaRuGjWAEJ1DRYAogCOeEEoUADK5hRwJIgiQeWJALpAA_3
# 線 1
execute positioned ^0 ^ ^-20 run summon area_effect_cloud ~ ~ ~ {Duration:20,Tags:["BG.Temp.AttackPosition"]}
execute positioned ^0 ^ ^-15.78947 run summon area_effect_cloud ~ ~ ~ {Duration:20,Tags:["BG.Temp.AttackPosition"]}
execute positioned ^0 ^ ^-11.57895 run summon area_effect_cloud ~ ~ ~ {Duration:20,Tags:["BG.Temp.AttackPosition"]}
execute positioned ^0 ^ ^-7.36842 run summon area_effect_cloud ~ ~ ~ {Duration:20,Tags:["BG.Temp.AttackPosition"]}
execute positioned ^0 ^ ^-3.15789 run summon area_effect_cloud ~ ~ ~ {Duration:20,Tags:["BG.Temp.AttackPosition"]}
execute positioned ^0 ^ ^1.05263 run summon area_effect_cloud ~ ~ ~ {Duration:20,Tags:["BG.Temp.AttackPosition"]}
execute positioned ^0 ^ ^5.26316 run summon area_effect_cloud ~ ~ ~ {Duration:20,Tags:["BG.Temp.AttackPosition"]}
execute positioned ^0 ^ ^9.47368 run summon area_effect_cloud ~ ~ ~ {Duration:20,Tags:["BG.Temp.AttackPosition"]}
execute positioned ^0 ^ ^13.68421 run summon area_effect_cloud ~ ~ ~ {Duration:20,Tags:["BG.Temp.AttackPosition"]}
execute positioned ^0 ^ ^17.89474 run summon area_effect_cloud ~ ~ ~ {Duration:20,Tags:["BG.Temp.AttackPosition"]}
execute positioned ^0 ^ ^22.10526 run summon area_effect_cloud ~ ~ ~ {Duration:20,Tags:["BG.Temp.AttackPosition"]}
execute positioned ^0 ^ ^26.31579 run summon area_effect_cloud ~ ~ ~ {Duration:20,Tags:["BG.Temp.AttackPosition"]}
execute positioned ^0 ^ ^30.52632 run summon area_effect_cloud ~ ~ ~ {Duration:20,Tags:["BG.Temp.AttackPosition"]}
execute positioned ^0 ^ ^34.73684 run summon area_effect_cloud ~ ~ ~ {Duration:20,Tags:["BG.Temp.AttackPosition"]}
execute positioned ^0 ^ ^38.94737 run summon area_effect_cloud ~ ~ ~ {Duration:20,Tags:["BG.Temp.AttackPosition"]}
execute positioned ^0 ^ ^43.15789 run summon area_effect_cloud ~ ~ ~ {Duration:20,Tags:["BG.Temp.AttackPosition"]}
execute positioned ^0 ^ ^47.36842 run summon area_effect_cloud ~ ~ ~ {Duration:20,Tags:["BG.Temp.AttackPosition"]}
execute positioned ^0 ^ ^51.57895 run summon area_effect_cloud ~ ~ ~ {Duration:20,Tags:["BG.Temp.AttackPosition"]}
execute positioned ^0 ^ ^55.78947 run summon area_effect_cloud ~ ~ ~ {Duration:20,Tags:["BG.Temp.AttackPosition"]}
execute positioned ^0 ^ ^60 run summon area_effect_cloud ~ ~ ~ {Duration:20,Tags:["BG.Temp.AttackPosition"]}

#> asset:mob/0341.louvert/tick/animation/7_1_soul_cast/soul_summon
#
# ソウルブラスト 5m間隔
#
# @within function asset:mob/0341.louvert/tick/animation/7_1_soul_cast/

# Markerを呼び出す
    tp 0-0-0-0-0 ^ ^ ^ ~ 0
# 拡散値
    data modify storage lib: Argument.Bounds set value [[8d,8d],[0d,0d],[8d,8d]]
# 拡散する
    execute as 0-0-0-0-0 at @s run function lib:spread_entity/
# 演出のためにランダムな方向を向かせる
    execute store result entity 0-0-0-0-0 Rotation[0] float 0.01 run random value 0..35999
# ソウルブラスト召喚
    execute at 0-0-0-0-0 run function asset:mob/0341.louvert/tick/general/5.soul_blast
# ソウルブラストの位置調整
    execute at 0-0-0-0-0 as @e[tag=2145.SoulBlast,distance=..0.01,limit=1] run tp @s ^ ^ ^7.5 ~ ~
# ソウルブラスト召喚
    execute at 0-0-0-0-0 run function asset:mob/0341.louvert/tick/general/5.soul_blast
# ソウルブラストの位置調整
    execute at 0-0-0-0-0 as @e[tag=2145.SoulBlast,distance=..0.01,limit=1] run tp @s ^ ^ ^2.5 ~ ~
# ソウルブラスト召喚
    execute at 0-0-0-0-0 run function asset:mob/0341.louvert/tick/general/5.soul_blast
# ソウルブラストの位置調整
    execute at 0-0-0-0-0 as @e[tag=2145.SoulBlast,distance=..0.01,limit=1] run tp @s ^ ^ ^-2.5 ~ ~
# ソウルブラスト召喚
    execute at 0-0-0-0-0 run function asset:mob/0341.louvert/tick/general/5.soul_blast
# ソウルブラストの位置調整
    execute at 0-0-0-0-0 as @e[tag=2145.SoulBlast,distance=..0.01,limit=1] run tp @s ^ ^ ^-7.5 ~ ~
# ソウルブラスト召喚
    execute if predicate api:global_vars/difficulty/min/3_blessless at 0-0-0-0-0 run function asset:mob/0341.louvert/tick/general/5.soul_blast
# ソウルブラストの位置調整
    execute if predicate api:global_vars/difficulty/min/3_blessless at 0-0-0-0-0 as @e[tag=2145.SoulBlast,distance=..0.01,limit=1] run tp @s ^7.5 ^ ^ ~90 ~
# ソウルブラスト召喚
    execute if predicate api:global_vars/difficulty/min/3_blessless at 0-0-0-0-0 run function asset:mob/0341.louvert/tick/general/5.soul_blast
# ソウルブラストの位置調整
    execute if predicate api:global_vars/difficulty/min/3_blessless at 0-0-0-0-0 as @e[tag=2145.SoulBlast,distance=..0.01,limit=1] run tp @s ^2.5 ^ ^ ~90 ~
# ソウルブラスト召喚
    execute if predicate api:global_vars/difficulty/min/3_blessless at 0-0-0-0-0 run function asset:mob/0341.louvert/tick/general/5.soul_blast
# ソウルブラストの位置調整
    execute if predicate api:global_vars/difficulty/min/3_blessless at 0-0-0-0-0 as @e[tag=2145.SoulBlast,distance=..0.01,limit=1] run tp @s ^-2.5 ^ ^ ~90 ~
# ソウルブラスト召喚
    execute if predicate api:global_vars/difficulty/min/3_blessless at 0-0-0-0-0 run function asset:mob/0341.louvert/tick/general/5.soul_blast
# ソウルブラストの位置調整
    execute if predicate api:global_vars/difficulty/min/3_blessless at 0-0-0-0-0 as @e[tag=2145.SoulBlast,distance=..0.01,limit=1] run tp @s ^-7.5 ^ ^ ~90 ~
# Makerを戻してあげる
    execute in overworld run tp 0-0-0-0-0 0.0 0.0 0.0

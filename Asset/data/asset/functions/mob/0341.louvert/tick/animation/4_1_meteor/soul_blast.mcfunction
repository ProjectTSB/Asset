#> asset:mob/0341.louvert/tick/animation/4_1_meteor/soul_blast
#
# ソウルブラスト発動
#
# @within function asset:mob/0341.louvert/tick/animation/4_1_meteor/

# Markerを呼び出す
    tp 0-0-0-0-0 ^ ^ ^ ~ ~
# 拡散値
    data modify storage lib: Argument.Bounds set value [[10d,10d],[0d,0d],[10d,10d]]
# 拡散する
    execute as 0-0-0-0-0 at @s run function lib:spread_entity/
# ソウルブラスト召喚
    execute at 0-0-0-0-0 run function asset:mob/0341.louvert/tick/general/5.soul_blast
# ソウルブラストの向きランダム
    execute at 0-0-0-0-0 as @e[tag=2145.SoulBlast,distance=..0.01,limit=1] facing entity @a[tag=!PlayerShouldInvulnerable,distance=..100,sort=nearest,limit=1] eyes rotated ~90 0 run tp @s ~ ~ ~ ~ ~

# Markerを呼び出す
    tp 0-0-0-0-0 ^ ^ ^ ~ ~
# 拡散値
    data modify storage lib: Argument.Bounds set value [[10d,10d],[0d,0d],[10d,10d]]
# 拡散する
    execute as 0-0-0-0-0 at @s run function lib:spread_entity/
# ソウルブラスト召喚
    execute at 0-0-0-0-0 run function asset:mob/0341.louvert/tick/general/5.soul_blast
# ソウルブラストの向きランダム
    execute at 0-0-0-0-0 as @e[tag=2145.SoulBlast,distance=..0.01,limit=1] facing entity @a[tag=!PlayerShouldInvulnerable,distance=..100,sort=nearest,limit=1] eyes rotated ~90 0 run tp @s ~ ~ ~ ~ ~

# Makerを戻してあげる
    execute in overworld run tp 0-0-0-0-0 0.0 0.0 0.0

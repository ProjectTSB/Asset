#> asset:object/2008.disaster_divine/tick/cast/loop
#
# ループ処理
#
# @within function
#   asset:object/2008.disaster_divine/tick/cast/
#   asset:object/2008.disaster_divine/tick/cast/loop

# 残念ながらブロックは破壊します
    execute if predicate api:area/is_breakable unless block ^ ^ ^0.5 #lib:air unless block ^ ^ ^0.5 #lib:unbreakable run setblock ^ ^ ^0.5 air destroy

# 着弾検知
    execute unless block ^ ^ ^0.5 #lib:no_collision/ run tag @s add 2008.Landing

# ターゲットにタグ付与
    execute positioned ~-0.5 ~-0.5 ~-0.5 run tag @a[tag=!PlayerShouldInvulnerable,dx=0] add 2008.Landing

# 演出
    particle dust 1 1 0.3 2 ~ ~ ~ 0.1 0.1 0.1 0 2
    particle electric_spark ~ ~ ~ 0.15 0.15 0.15 0.1 1
    execute if predicate lib:random_pass_per/10 run particle end_rod ~ ~ ~ 0.15 0.15 0.15 0 1
    execute if predicate lib:random_pass_per/50 run particle glow ~ ~ ~ 0.15 0.15 0.15 0 1

# 再起
    execute positioned ^ ^ ^0.5 if entity @s[tag=!2008.Landing,distance=..50] run function asset:object/2008.disaster_divine/tick/cast/loop

#> asset:object/2010.hexa_laser/tick/beam/loop
#
# ループ処理
#
# @within function
#   asset:object/2010.hexa_laser/tick/beam/
#   asset:object/2010.hexa_laser/tick/beam/loop

# 着弾検知
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @p[tag=!PlayerShouldInvulnerable,dx=0] run tag @s add 2010.Landing
    execute unless block ^ ^ ^0.5 #lib:no_collision/ run tag @s add 2010.Landing

# ターゲットにタグ付与
    execute positioned ~-0.5 ~-0.5 ~-0.5 run tag @a[tag=!PlayerShouldInvulnerable,dx=0] add 2010.Landing

# 着弾演出
    execute if entity @s[tag=2010.Landing] run function asset:object/2010.hexa_laser/tick/beam/vfx

# 着弾
    execute if entity @s[tag=2010.Landing] if entity @a[tag=2010.Landing,distance=..5] run function asset:object/2010.hexa_laser/tick/beam/damage

# 再起
    execute positioned ^ ^ ^0.5 if entity @s[tag=!2010.Landing,distance=..20] run function asset:object/2010.hexa_laser/tick/beam/loop

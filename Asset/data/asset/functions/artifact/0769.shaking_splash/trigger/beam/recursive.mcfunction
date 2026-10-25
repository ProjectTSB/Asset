#> asset:artifact/0769.shaking_splash/trigger/beam/recursive
#
# ビームの再帰部分の処理
#
# @within function
#   asset:artifact/0769.shaking_splash/trigger/beam/
#   asset:artifact/0769.shaking_splash/trigger/beam/recursive

# 演出
    particle dust 0.8 500000000 1000000000 0.8 ~ ~ ~ 0.1 0.1 0.1 0 3 normal @a
    particle dust 0.8 500000000 1000000000 0.8 ^ ^ ^0.25 0.1 0.1 0.1 0 3 normal @a
    execute if predicate lib:random_pass_per/50 run particle firework ~ ~ ~ 0.3 0.3 0.3 0.25 1
    particle bubble ~ ~ ~ 0.1 0.1 0.1 0 2 normal @a
    particle bubble ^ ^ ^0.25 0.1 0.1 0.1 0 2 normal @a

# 当たった敵にTagを付与
    execute positioned ~-0.5 ~-0.5 ~-0.5 run tag @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,dx=0] add LandingTarget

# ついでに火を消す おまけで範囲を広くしておく
    execute if predicate api:area/is_breakable run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air replace fire

# 再帰
    execute if entity @s[distance=..12] positioned ^ ^ ^0.5 if block ~ ~ ~ #lib:no_collision/ run function asset:artifact/0769.shaking_splash/trigger/beam/recursive

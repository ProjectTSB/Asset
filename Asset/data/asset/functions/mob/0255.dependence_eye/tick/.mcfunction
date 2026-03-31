#> asset:mob/0255.dependence_eye/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/alias/255/tick

# パーティクル
    particle dust 0.5 0 0 1 ~ ~1.68 ~ 0.25 0.25 0.25 0 2 force @a[distance=..40]

# 接地で上を向く
    execute unless block ~ ~-0.1 ~ #lib:no_collision at @s run tp @s ~ ~ ~ ~ ~-35
    execute unless block ~ ~1 ~ #lib:no_collision at @s run tp @s ~ ~ ~ ~ ~80

# 範囲内ならホーミングじみた移動、ただしダメージを受けていないなら
    execute facing entity @p eyes positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-800 facing entity @s eyes positioned as @s run tp @s ^ ^ ^0.25 ~ ~

# クールタイム
    execute store result storage asset:context this.AttackCT int 0.9999999999 run data get storage asset:context this.AttackCT

# クールタイム中じゃないなら接触時に攻撃
    execute if data storage asset:context this{AttackCT:0} positioned ~-0.5 ~-0.5 ~-0.5 if entity @p[tag=!PlayerShouldInvulnerable,dx=0] run function asset:mob/0255.dependence_eye/tick/attack

# カベにぶつかった際の処理
    execute unless block ^ ^ ^0.5 #lib:no_collision at @s run tp @s ~ ~ ~ ~45 ~-45
    execute at @s unless block ^ ^ ^0.2 #lib:no_collision at @s run tp @s ~ ~ ~ ~45 ~-45

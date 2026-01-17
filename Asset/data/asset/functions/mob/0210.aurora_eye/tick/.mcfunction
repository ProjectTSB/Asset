#> asset:mob/0210.aurora_eye/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/alias/210/tick

# 演出
    particle dust_color_transition 0.000 1.000 0.886 1 0 0.235 1 ~ ~1.68 ~ 0.25 0.25 0.25 0 1 normal

# 接地で上を向く
    execute unless block ~ ~0.4 ~ #lib:no_collision at @s run tp @s ~ ~ ~ ~ ~-35
    execute unless block ~ ~2.5 ~ #lib:no_collision at @s run tp @s ~ ~ ~ ~ ~80

# 範囲内ならホーミングじみた移動、ただしダメージを受けていないなら
    execute facing entity @p[gamemode=!spectator] feet positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-800 facing entity @s feet positioned as @s run tp @s ^ ^ ^0.2 ~ ~

# カベにぶつかった際の処理
    execute unless block ^ ^ ^0.3 #lib:no_collision at @s run tp @s ~ ~ ~ ~45 ~-45
    execute at @s unless block ^ ^ ^0.2 #lib:no_collision at @s run tp @s ~ ~ ~ ~45 ~-45

# 近接攻撃
    execute store result storage asset:context this.AttackCT._ int 0.9999999999 run data get storage asset:context this.AttackCT._
    execute if data storage asset:context this.AttackCT{_:0} anchored eyes positioned ~-0.5 ~-0.5 ~-0.5 as @p[tag=!PlayerShouldInvulnerable,dx=0] at @s run function asset:mob/0210.aurora_eye/tick/attack

# 遠距離攻撃
    execute unless entity @a[gamemode=!spectator,distance=..8] store result storage asset:context this.ShootCT._ int 0.9999999999 run data get storage asset:context this.ShootCT._
    execute if data storage asset:context this.ShootCT{_:0} anchored eyes positioned ^ ^ ^0.25 summon marker run function asset:mob/0210.aurora_eye/tick/summon_bullet

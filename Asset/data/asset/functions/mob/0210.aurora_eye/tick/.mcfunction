#> asset:mob/0210.aurora_eye/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/alias/210/tick

# 演出
    particle dust_color_transition 0.000 1.000 0.886 1 0 0.235 1 ~ ~1.68 ~ 0.25 0.25 0.25 0 1 normal

# super.tick
    function asset:mob/super.tick


# 近接攻撃
    execute store result storage asset:context this.AttackCT._ int 0.9999999999 run data get storage asset:context this.AttackCT._
    execute if data storage asset:context this.AttackCT{_:0} anchored eyes positioned ^ ^ ^ positioned ~-0.5 ~-0.5 ~-0.5 as @p[tag=!PlayerShouldInvulnerable,dx=0] at @s run function asset:mob/0210.aurora_eye/tick/attack

# 遠距離攻撃
    execute unless entity @a[gamemode=!spectator,distance=..8] store result storage asset:context this.BulletCT._ int 0.9999999999 run data get storage asset:context this.BulletCT._
    execute if data storage asset:context this.BulletCT{_:0} run function asset:mob/0210.aurora_eye/tick/summon_bullet

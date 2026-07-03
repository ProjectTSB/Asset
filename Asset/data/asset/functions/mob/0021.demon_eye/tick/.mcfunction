#> asset:mob/0021.demon_eye/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/alias/21/tick

# パーティクル
    particle dust 0.5 0 0 1 ~ ~1.68 ~ 0.25 0.25 0.25 0 2 force @a[distance=..40]

# super.tick
    function asset:mob/super.tick

# クールタイムを減らす 0以下にはならない
    scoreboard players remove @s[scores={L.AttackCT=1..}] L.AttackCT 1

# クールタイム中じゃないなら接触時に攻撃
    execute unless score @s L.AttackCT matches 1.. positioned ~-0.5 ~-0.5 ~-0.5 if entity @p[tag=!PlayerShouldInvulnerable,dx=0] at @s run function asset:mob/0021.demon_eye/tick/event/attack

# 世界に存在しすぎた場合、消滅する
    scoreboard players remove @s L.LifeTime 1
    execute if score @s L.LifeTime matches ..0 run function asset:mob/0021.demon_eye/tick/event/suicide

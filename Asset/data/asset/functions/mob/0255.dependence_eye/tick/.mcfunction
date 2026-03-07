#> asset:mob/0255.dependence_eye/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/alias/255/tick

# だいたいデーモンアイからコピー。幾何学つかって多少簡略化
# パーティクル
    particle dust 0.5 0 0 1 ~ ~1.68 ~ 0.25 0.25 0.25 0 2 force @a[distance=..40]

# super.tick
    function asset:mob/super.tick

# クールタイムを減らす 0以下にはならない
    scoreboard players remove @s[scores={73.AttackCT=1..}] 73.AttackCT 1

# クールタイム中じゃないなら接触時に攻撃
    execute unless score @s 73.AttackCT matches 1.. positioned ~-0.5 ~-0.5 ~-0.5 if entity @p[tag=!PlayerShouldInvulnerable,dx=0] run function asset:mob/0255.dependence_eye/tick/3.attack

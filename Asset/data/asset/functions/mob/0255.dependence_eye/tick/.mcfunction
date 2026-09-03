#> asset:mob/0255.dependence_eye/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/alias/255/tick

# パーティクル
    particle dust 0.5 0 0 1 ~ ~1.68 ~ 0.25 0.25 0.25 0 2 force @a[distance=..40]

# super.tick
    function asset:mob/super.tick

# クールタイム
    execute store result storage asset:context this.AttackCT int 0.9999999999 run data get storage asset:context this.AttackCT

# クールタイム中じゃないなら接触時に攻撃
    execute if data storage asset:context this{AttackCT:0} positioned ~-0.5 ~-0.5 ~-0.5 if entity @p[tag=!PlayerShouldInvulnerable,dx=0] run function asset:mob/0255.dependence_eye/tick/attack

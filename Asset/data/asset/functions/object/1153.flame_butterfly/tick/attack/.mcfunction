#> asset:object/1153.flame_butterfly/tick/attack/
#
#
#
# @within function asset:object/1153.flame_butterfly/tick/move/chase_enemy/m

# 発生までのディレイ
    execute store result storage asset:context this.AttackDelay._ int 0.9999999999 run data get storage asset:context this.AttackDelay._

# 攻撃
    execute if data storage asset:context this.AttackDelay{_:0} run function asset:object/1153.flame_butterfly/tick/attack/attack

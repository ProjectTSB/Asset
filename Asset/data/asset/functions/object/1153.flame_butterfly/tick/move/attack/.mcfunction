#> asset:object/1153.flame_butterfly/tick/move/attack/
#
#
#
# @within function asset:object/1153.flame_butterfly/tick/move/chase_enemy/m

    # tellraw @a {"storage":"asset:context","nbt":"this"}

# 発生までのディレイ
    execute store result storage asset:context this.AttackDelay._ int 0.9999999999 run data get storage asset:context this.AttackDelay._

# 演出
    # execute if data storage asset:context this.AttackDelay{_:4} run function asset:object/1153.flame_butterfly/tick/move/attack/vfx/1

# 攻撃
    execute if data storage asset:context this.AttackDelay{_:0} run function asset:object/1153.flame_butterfly/tick/move/attack/attack
    # execute if data storage asset:context this.AttackDelay{_:0} run data modify storage asset:context this.AttackCD._ set from storage asset:context this.AttackCD.Max
    # execute if data storage asset:context this.AttackDelay{_:0} run data modify storage asset:context this.AttackDelay._ set from storage asset:context this.AttackDelay.Max
    #execute if data storage asset:context this.AttackCD{_:0} run function asset:object/1153.flame_butterfly/tick/move/attack/attack

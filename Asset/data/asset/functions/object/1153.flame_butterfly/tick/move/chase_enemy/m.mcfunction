#> asset:object/1153.flame_butterfly/tick/move/chase_enemy/m
#
#
#
# @within function asset:object/1153.flame_butterfly/tick/move/

# ChaseTickが0になるまで敵を追跡する
#  - 0になったらその敵への追跡を諦める
#  - 0になる前に接触すれば攻撃する

# 追跡時間のデクリメント
    execute store result storage asset:context this.ChaseTick._ int 0.9999999999 run data get storage asset:context this.ChaseTick._

# 追跡時間が0になったらリセットする
    execute if data storage asset:context this.ChaseTick{_:0} run return run function asset:object/1153.flame_butterfly/tick/move/common/reset

# 攻撃前のディレイがないなら追跡
    execute if data storage asset:context this.AttackDelay{_:0} run function asset:object/1153.flame_butterfly/tick/move/chase_enemy/chase.m with storage asset:context this

# ターゲットが近くにいれば攻撃モードになる
    $execute if data storage asset:context this.AttackCD{_:0} at @s positioned ~-1.2 ~-1.2 ~-1.2 if entity @e[type=#lib:living_without_player,tag=Enemy,scores={MobUUID=$(TargetMobUUID)},dx=1.4,dy=1.4,dz=1.4] run function asset:object/1153.flame_butterfly/tick/move/chase_enemy/set_attack_mode

# 攻撃モードなら攻撃処理
    execute if data storage asset:context this{IsAttackMode:true} run function asset:object/1153.flame_butterfly/tick/move/attack/
    execute if data storage asset:context this{IsAttackMode:true} run data modify storage asset:context this.ChaseTick._ set from storage asset:context this.ChaseTick.Max

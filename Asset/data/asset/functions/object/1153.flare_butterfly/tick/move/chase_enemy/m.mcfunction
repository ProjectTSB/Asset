#> asset:object/1153.flare_butterfly/tick/move/chase_enemy/m
#
#
#
# @within function asset:object/1153.flare_butterfly/tick/move/

# ChaseTickが0になるまで敵を追跡する
#  - 0になったらその敵への追跡を諦める
#  - 0になる前に接触すれば攻撃する

# 追跡時間
    execute store result storage asset:context this.ChaseTick._ int 0.9999999999 run data get storage asset:context this.ChaseTick._
    execute if data storage asset:context this.ChaseTick{_:0} run return run function asset:object/1153.flare_butterfly/tick/move/common/reset

# 攻撃前のディレイがない && 対象が近くにいないなら追跡
    execute if data storage asset:context this.AttackDelay{_:0} unless function asset:object/1153.flare_butterfly/predicate/near_target/very_near/ run function asset:object/1153.flare_butterfly/tick/move/chase_enemy/chase.m with storage asset:context this

# ターゲットが近くにいれば攻撃モードになる
    execute if data storage asset:context this{IsAttackMode:false} if data storage asset:context this.AttackCD{_:0} if function asset:object/1153.flare_butterfly/predicate/near_target/very_near/ run function asset:object/1153.flare_butterfly/tick/move/chase_enemy/set_attack_mode

# 攻撃モードなら攻撃処理
    execute if data storage asset:context this{IsAttackMode:true} run function asset:object/1153.flare_butterfly/tick/attack/
    execute if data storage asset:context this{IsAttackMode:true} run data modify storage asset:context this.ChaseTick._ set from storage asset:context this.ChaseTick.Max

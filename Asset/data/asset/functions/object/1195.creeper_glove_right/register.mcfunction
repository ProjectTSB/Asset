#> asset:object/1195.creeper_glove_right/register
#
# Objectのデータを指定
#
# @within function asset:object/alias/1195/register

# 継承(オプション)
    # data modify storage asset:object Extends append value
    # function asset:object/extends
# 他のObjectに継承されることを許可するか (boolean) (オプション)
    data modify storage asset:object ExtendsSafe set value true
# 継承されることを前提とした、抽象的なObjectであるかどうか(boolean)
    data modify storage asset:object IsAbstract set value false
# Tickするかどうか(boolean) (オプション)
    # data modify storage asset:object IsTicking set value

# ID (int)
    data modify storage asset:object ID set value 1195
# フィールド(オプション)
    data modify storage asset:object Field.UserID set value -1
    data modify storage asset:object Field.Damage set value 1d
    data modify storage asset:object Field.SwingCooldown set value 1
    data modify storage asset:object Field.LifeTime set value 1
    data modify storage asset:object Field.EnemyKnockback set value 1.0d
    # 左右 (右: 1, 左: -1) と所有者の目からの位置 (m)
    data modify storage asset:object Field.Side set value 1
    data modify storage asset:object Field.OffsetSide set value 1.0d
    data modify storage asset:object Field.OffsetUp set value -0.3d
    data modify storage asset:object Field.OffsetForward set value 0.2d
    data modify storage asset:object Field.Reach set value 3.0d
    # 振り (閾値は度/tick、時間はtick)
    data modify storage asset:object Field.SwingThreshold set value 5.0d
    data modify storage asset:object Field.SwingDuration set value 3
    data modify storage asset:object Field.ReturnDuration set value 10
    data modify storage asset:object Field.FinishYaw set value 70.0d
    data modify storage asset:object Field.HitHoldDuration set value 15
    # 強化 (召喚からEmpowerTime tick後に、振りの各時間を強化後の値へ変える)
    data modify storage asset:object Field.EmpowerTime set value 10
    data modify storage asset:object Field.EmpoweredSwingCooldown set value 1
    data modify storage asset:object Field.EmpoweredReturnDuration set value 1
    data modify storage asset:object Field.EmpoweredHitHoldDuration set value 1
    data modify storage asset:object Field.EmpoweredSwingThreshold set value 1.0d
    # 状態
    data modify storage asset:object Field.State set value "idle"
    data modify storage asset:object Field.Step set value 0
    data modify storage asset:object Field.PrevYaw set value 0
    data modify storage asset:object Field.IgnoreBury set value false
    data modify storage asset:object Field.ExplodeProgress set value 0
    data modify storage asset:object Field.Empowered set value false

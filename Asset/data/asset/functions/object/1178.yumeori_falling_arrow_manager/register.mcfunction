#> asset:object/1178.yumeori_falling_arrow_manager/register
#
# Objectのデータを指定
#
# @within function asset:object/alias/1178/register

# 継承(オプション)
    # data modify storage asset:object Extends append value
    # function asset:object/extends
# 他のObjectに継承されることを許可するか (boolean) (オプション)
    # data modify storage asset:object ExtendsSafe set value
# 継承されることを前提とした、抽象的なObjectであるかどうか(boolean)
    data modify storage asset:object IsAbstract set value false
# Tickするかどうか(boolean) (オプション)
    # data modify storage asset:object IsTicking set value

# ID (int)
    data modify storage asset:object ID set value 1178
# フィールド(オプション)
    data modify storage asset:object Field.Interval._ set value 2
    data modify storage asset:object Field.Interval.Max set value 2
    data modify storage asset:object Field.IsFirstShot set value true

# ダメージ等
    data modify storage asset:object Field.Damage set value 1d
    data modify storage asset:object Field.AdditionalMPHeal set value 1d
    data modify storage asset:object Field.UserID set value -1

# 本数
    data modify storage asset:object Field.Count set value 6
# ディレイ
    data modify storage asset:object Field.Delay set value 20

# 攻撃範囲(各辺の長さ)
    data modify storage asset:object Field.AttackRange.X set value 8
    data modify storage asset:object Field.AttackRange.Y set value 10
    data modify storage asset:object Field.AttackRange.Z set value 10

# 1発目のxの範囲
    data modify storage asset:object Field.AttackRange.FirstX set value 4

# 座標
    data modify storage asset:object Field.Pos.X set value 0.0f
    data modify storage asset:object Field.Pos.Y set value 0.0f
    data modify storage asset:object Field.Pos.Z set value 0.0f

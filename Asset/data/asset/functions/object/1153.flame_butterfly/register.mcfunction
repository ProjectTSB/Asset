#> asset:object/1153.flame_butterfly/register
#
# Objectのデータを指定
#
# @within function asset:object/alias/1153/register

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
    data modify storage asset:object ID set value 1153
# フィールド(オプション)

# 移動速度
    data modify storage asset:object Field.ChaseSpeed set value 0.4

# 負荷軽減用のインターバル
    data modify storage asset:object Field.SearchInterval._ set value 0
    data modify storage asset:object Field.SearchInterval.Max set value 3

# 最大追跡時間
    data modify storage asset:object Field.ChaseTick._ set value 0
    data modify storage asset:object Field.ChaseTick.Max set value 60

# 攻撃発生までのディレイ
    data modify storage asset:object Field.AttackDelay._ set value 0
    data modify storage asset:object Field.AttackDelay.Max set value 5

# 攻撃のクールダウン
    data modify storage asset:object Field.AttackCD._ set value 0
    data modify storage asset:object Field.AttackCD.Max set value 20

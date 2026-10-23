#> asset:object/1208.osmanthus_scent/register
#
# Objectのデータを指定
#
# @within function asset:object/alias/1208/register

# 継承(オプション)
    data modify storage asset:object Extends append value 1
    function asset:object/extends
# 他のObjectに継承されることを許可するか (boolean) (オプション)
    # data modify storage asset:object ExtendsSafe set value
# 継承されることを前提とした、抽象的なObjectであるかどうか(boolean)
    data modify storage asset:object IsAbstract set value false
# Tickするかどうか(boolean) (オプション)
    # data modify storage asset:object IsTicking set value

# ID (int)
    data modify storage asset:object ID set value 1208
# フィールド(オプション)
        data modify storage asset:object Field.Speed set value 5
        data modify storage asset:object Field.Range set value 30
        data modify storage asset:object Field.MovePerStep set value 0.5
        data modify storage asset:object Field.Damage set value 1
        data modify storage asset:object Field.MPHeal set value 1
        data modify storage asset:object Field.UserID set value -1
        data modify storage asset:object Field.SecondRate set value 50
        data modify storage asset:object Field.SecondRadius set value 1.0d
        data modify storage asset:object Field.DebuffDuration set value 30
        data modify storage asset:object Field.MaxDebuffTargets set value 3

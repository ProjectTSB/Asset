#> asset:object/0006.magic_circle/register
#
# Objectのデータを指定
#
# @within function asset:object/alias/6/register

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
    data modify storage asset:object ID set value 6
# フィールド(オプション)
    data modify storage asset:object Field.Char set value "0"
    data modify storage asset:object Field.Font set value "object/0006"
    data modify storage asset:object Field.Spin set value 4
    data modify storage asset:object Field.FirstSpin set value true
    data modify storage asset:object Field.LeftRotate set value false
# 出現・通常回転・消失の変化にかける時間(tick、1以上)
    data modify storage asset:object Field.AppearDuration set value 12
    data modify storage asset:object Field.SpinDuration set value 16
    data modify storage asset:object Field.DisappearDuration set value 12
# 出現時と消失時の変化先のScale
    data modify storage asset:object Field.AppearScale set value [5f,5f,0f]
    data modify storage asset:object Field.DisappearScale set value [0f,0f,0f]
# 召喚後から消滅までの時間(tick、3 + AppearDuration + DisappearDuration以上)
    data modify storage asset:object Field.Tick set value 60

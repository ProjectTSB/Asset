#> asset:object/1209.pluvia_circle/register
#
# Objectのデータを指定
#
# @within function asset:object/alias/1209/register

# 継承(オプション)
    data modify storage asset:object Extends append value 2279
    function asset:object/extends
# 他のObjectに継承されることを許可するか (boolean) (オプション)
    # data modify storage asset:object ExtendsSafe set value
# 継承されることを前提とした、抽象的なObjectであるかどうか(boolean)
    data modify storage asset:object IsAbstract set value false
# Tickするかどうか(boolean) (オプション)
    # data modify storage asset:object IsTicking set value

# ID (int)
    data modify storage asset:object ID set value 1209
# フィールド(オプション)

# ダメージ類
    data modify storage asset:object Field.Damage set value 1d
    data modify storage asset:object Field.AdditionalMPHeal set value 1d
    data modify storage asset:object Field.UserID set value -1

# TargetMobUUID (いない場合があるので初期値は未設定)
    # data modify storage asset:object Field.TargetMobUUID set value -1

# 射程
    data modify storage asset:object Field.MaxRange set value 20
    data modify storage asset:object Field.Range set value -1

# 魔法陣用フィールド
    data modify storage asset:object Field.Char set value "0"
    data modify storage asset:object Field.Font set value "object/2279"
    data modify storage asset:object Field.Color set value "#448afb"
    data modify storage asset:object Field.LeftRotate set value false
    data modify storage asset:object Field.AppearDuration set value 4
    data modify storage asset:object Field.SpinDuration set value 5
    data modify storage asset:object Field.DisappearDuration set value 5
    data modify storage asset:object Field.AppearScale set value [2f,2f,0f]
    data modify storage asset:object Field.Tick set value 17

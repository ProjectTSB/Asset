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

# 使用者が指定する設定
# 文字
    data modify storage asset:object Field.Char set value "0"
# 裏面に表示する文字 (未設定の場合、表裏で共通の文字を使用)
    # data modify storage asset:object Field.BackChar set value "0"
# フォント
    data modify storage asset:object Field.Font set value "object/0006"
# 左回転か否か
    data modify storage asset:object Field.LeftRotate set value false
# 出現するのに何tickかけるか
    data modify storage asset:object Field.AppearDuration set value 12
# 90°回転に何tickかけるか
    data modify storage asset:object Field.SpinDuration set value 16
# 消滅時に何tickかけるか
    data modify storage asset:object Field.DisappearDuration set value 12
# 通常時のscale
    data modify storage asset:object Field.AppearScale set value [5f,5f,0f]
# 消滅時のscale
    data modify storage asset:object Field.DisappearScale set value [0f,0f,0f]
# 消滅までのtick
# 数値によっては変化途中でも問答無用で消えるので注意
    data modify storage asset:object Field.Tick set value 60

# 内部状態
# 次の回転先を決める内部状態(int、4から開始し、90度ごとに循環)
    data modify storage asset:object Field.Spin set value 4
# 最初の回転に出現時の変化を適用する内部状態(boolean)
    data modify storage asset:object Field.FirstSpin set value true

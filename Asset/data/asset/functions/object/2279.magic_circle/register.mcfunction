#> asset:object/2279.magic_circle/register
#
# Objectのデータを指定
#
# @within function asset:object/alias/2279/register

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
    data modify storage asset:object ID set value 2279
# フィールド(オプション)

# 使用者が指定する設定
# 文字
    data modify storage asset:object Field.Char set value "0"
# 裏面に表示する文字 (未設定の場合、表裏で共通の文字を使用)
    # data modify storage asset:object Field.BackChar set value "0"
# フォント
    data modify storage asset:object Field.Font set value "object/2279"
# 両面共通の文字色(string、色名または#RRGGBB、未設定なら色を指定しない)
    # data modify storage asset:object Field.Color set value "#ffffff"
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
# Tick = (3 + AppearDuration + SpinDuration × N + DisappearDuration) だと綺麗に消える
    data modify storage asset:object Field.Tick set value 59

# 内部状態
# Phaseはinitとtickが管理する参照用の状態(string)
# Waiting: 初回の3tick待機中
# Appearing: 出現時の変化中
# Rotating: 通常回転中
# Disappearing: 消失時の変化中
# 継承先はsuper.tick後にthis.Phaseを参照すると、そのtickの状態遷移を判定できる
# 例: execute unless data storage asset:context this{Phase:"Disappearing"} run ...
# 寿命切れで破棄された後は参照しない

# 次の回転先を決める内部状態(int、4から開始し、90度ごとに循環)
    data modify storage asset:object Field.Spin set value 4

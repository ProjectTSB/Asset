#> asset:effect/0210.fading_speed/register
#
# Effectのデータを指定
#
# @within function asset:effect/0210.fading_speed/_/register

# ExtendsSafe (boolean) (default = false)
    # data modify storage asset:effect ExtendsSafe set value true
# ID (int)
    data modify storage asset:effect ID set value 210
# 名前 (TextComponentString)
    data modify storage asset:effect Name set value '{"text":"薄れゆく速さ"}'
# 説明文 (TextComponentString[])
    data modify storage asset:effect Description set value ['{"text":"移動速度が極端に上昇するが、徐々に低下していく"}']
# 効果時間 (int) (default = API || error)
    # data modify storage asset:effect Duration set value 200
# スタック (int) (default = API || 1)
    # data modify storage asset:effect Stack set value 5
# 効果時間の操作方法 (default = API || "replace")
    data modify storage asset:effect DurationOperation set value "forceReplace"
# スタックの操作方法 (default = API || "replace")
    data modify storage asset:effect StackOperation set value "forceReplace"
# 最大効果時間 (int) (default = 2147483647)
    # data modify storage asset:effect MaxDuration set value
# 最大スタック (int) (default = 2147483647)
    # data modify storage asset:effect MaxStack set value 1
# 悪い効果か否か (boolean)
    data modify storage asset:effect IsBadEffect set value false
# 死亡時のエフェクトの処理 (default = "remove")
    # data modify storage asset:effect ProcessOnDied set value
# 消すのに必要なレベル (int) (default = 1)
    data modify storage asset:effect RequireClearLv set value 3
# エフェクトをUIに表示するか (boolean) (default = true)
    # data modify storage asset:effect Visible set value
# エフェクトのスタックををUIに表示するか (boolean) (default = true)
    # data modify storage asset:effect StackVisible set value false

# フィールド
    data modify storage asset:effect Field.Amount set value 0.2
    data modify storage asset:effect Field.Debuff.Duration set value 400
    data modify storage asset:effect Field.Debuff.Amount set value -0.2

    # data modify storage asset:effect Field.UpdateInterval.Max set value 200
    # data modify storage asset:effect Field.UpdateInterval._ set value 200

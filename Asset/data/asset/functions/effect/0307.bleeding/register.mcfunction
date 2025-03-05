#> asset:effect/0307.bleeding/register
#
# Effectのデータを指定
#
# @within function asset:effect/0307.bleeding/_/register

# ExtendsSafe (boolean) (default = false)
    # data modify storage asset:effect ExtendsSafe set value true
# ID (int)
    data modify storage asset:effect ID set value 307
# 名前 (TextComponentString)
    data modify storage asset:effect Name set value '{"text":"出血"}'
# 説明文 (TextComponentString[])
    data modify storage asset:effect Description set value ['{"text":"継続的に耐性を無視する3ダメージを受ける"}']
# 効果時間 (int) (default = API || error)
    # data modify storage asset:effect Duration set value 
# スタック (int) (default = API || 1)
    # data modify storage asset:effect Stack set value 
# 効果時間の操作方法 (default = API || "replace")
    data modify storage asset:effect DurationOperation set value "add"
# スタックの操作方法 (default = API || "replace")
    # data modify storage asset:effect StackOperation set value 
# 最大効果時間 (int) (default = 2147483647)
    # data modify storage asset:effect MaxDuration set value 
# 最大スタック (int) (default = 2147483647)
    # data modify storage asset:effect MaxStack set value 
# 悪い効果か否か (boolean)
    data modify storage asset:effect IsBadEffect set value true
# 死亡時のエフェクトの処理 (default = "remove")
    # data modify storage asset:effect ProcessOnDied set value 
# 消すのに必要なレベル (int) (default = 1)
    data modify storage asset:effect RequireClearLv set value 4
# エフェクトをUIに表示するか (boolean) (default = true)
    data modify storage asset:effect Visible set value true
# エフェクトのスタックををUIに表示するか (boolean) (default = true)
    data modify storage asset:effect StackVisible set value true

# フィールド
    data modify storage asset:effect Field.Tick set value 6
    data modify storage asset:effect Field.Damage set value 3
    data modify storage asset:effect Field.InflicterID set value -1

#> asset:effect/0253.purifying_indigo/register
#
# Effectのデータを指定
#
# @within function asset:effect/0253.purifying_indigo/_/register

# ExtendsSafe (boolean) (default = false)
    # data modify storage asset:effect ExtendsSafe set value true
# ID (int)
    data modify storage asset:effect ID set value 253
# 名前 (TextComponentString)
    data modify storage asset:effect Name set value '{"text":"浄藍","color":"#83aaf7"}'
# 説明文 (TextComponentString[])
    data modify storage asset:effect Description set value '{"text":"水属性与ダメージが上昇する"}'
# 効果時間 (int) (default = API || error)
    data modify storage asset:effect Duration set value 200
# スタック (int) (default = API || 1)
    # data modify storage asset:effect Stack set value
# 効果時間の操作方法 (default = API || "replace")
    # data modify storage asset:effect DurationOperation set value
# スタックの操作方法 (default = API || "replace")
    # data modify storage asset:effect StackOperation set value
# 最大効果時間 (int) (default = 2147483647)
    data modify storage asset:effect MaxDuration set value 200
# 最大スタック (int) (default = 2147483647)
    data modify storage asset:effect MaxStack set value 1
# 悪い効果か否か (boolean)
    data modify storage asset:effect IsBadEffect set value false
# 死亡時のエフェクトの処理 (default = "remove")
    # data modify storage asset:effect ProcessOnDied set value
# 消すのに必要なレベル (int) (default = 1)
    data modify storage asset:effect RequireClearLv set value 3

# フィールド
    # data modify storage asset:effect Field set value {}

#> asset:effect/0263.chivalry_of_ruin/register
#
# Effectのデータを指定
#
# @within function asset:effect/0263.chivalry_of_ruin/_/register

# ExtendsSafe (boolean) (default = false)
    # data modify storage asset:effect ExtendsSafe set value true
# ID (int)
    data modify storage asset:effect ID set value 263
# 名前 (TextComponentString)
    data modify storage asset:effect Name set value '{"text":"破滅の騎士道","color":"gray"}'
# 説明文 (TextComponentString[])
    data modify storage asset:effect Description set value ['{"text":"与ダメージと被ダメージが上昇する","color":"white"}']
# 効果時間 (int) (default = API || error)
    data modify storage asset:effect Duration set value 100
# スタック (int) (default = API || 1)
    # data modify storage asset:effect Stack set value
# 効果時間の操作方法 (default = API || "replace")
    # data modify storage asset:effect DurationOperation set value
# スタックの操作方法 (default = API || "replace")
    data modify storage asset:effect StackOperation set value "add"
# 最大効果時間 (int) (default = 2147483647)
    data modify storage asset:effect MaxDuration set value 100
# 最大スタック (int) (default = 2147483647)
    data modify storage asset:effect MaxStack set value 20
# 悪い効果か否か (boolean)
    data modify storage asset:effect IsBadEffect set value false
# 死亡時のエフェクトの処理 (default = "remove")
    # data modify storage asset:effect ProcessOnDied set value
# 消すのに必要なレベル (int) (default = 1)
    data modify storage asset:effect RequireClearLv set value 4

# フィールド
    # data modify storage asset:effect Field set value {}

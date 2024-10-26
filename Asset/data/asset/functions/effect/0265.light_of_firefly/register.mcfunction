#> asset:effect/0265.light_of_firefly/register
#
# Effectのデータを指定
#
# @within function asset:effect/0265.light_of_firefly/_/register

# ExtendsSafe (boolean) (default = false)
    # data modify storage asset:effect ExtendsSafe set value true
# ID (int)
    data modify storage asset:effect ID set value 265
# 名前 (TextComponentString)
    data modify storage asset:effect Name set value '{"text":"蛍火","color":"#88f8c8"}'
# 説明文 (TextComponentString[])
    data modify storage asset:effect Description set value ['{"text":"MP回復量が上昇する","color":"white"}']
# 効果時間 (int) (default = API || error)
    data modify storage asset:effect Duration set value 240
# スタック (int) (default = API || 1)
    # data modify storage asset:effect Stack set value
# 効果時間の操作方法 (default = API || "replace")
    # data modify storage asset:effect DurationOperation set value
# スタックの操作方法 (default = API || "replace")
    # data modify storage asset:effect StackOperation set value
# 最大効果時間 (int) (default = 2147483647)
    # data modify storage asset:effect MaxDuration set value
# 最大スタック (int) (default = 2147483647)
    # data modify storage asset:effect MaxStack set value
# 悪い効果か否か (boolean)
    data modify storage asset:effect IsBadEffect set value false
# 死亡時のエフェクトの処理 (default = "remove")
    # data modify storage asset:effect ProcessOnDied set value
# 消すのに必要なレベル (int) (default = 1)
    data modify storage asset:effect RequireClearLv set value 3

# フィールド
    # data modify storage asset:effect Field set value {}

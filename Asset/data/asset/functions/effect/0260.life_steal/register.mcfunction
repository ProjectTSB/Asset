#> asset:effect/0260.life_steal/register
#
# Effectのデータを指定
#
# @within function asset:effect/0260.life_steal/_/register

# ExtendsSafe (boolean) (default = false)
    # data modify storage asset:effect ExtendsSafe set value true
# ID (int)
    data modify storage asset:effect ID set value 260
# 名前 (TextComponentString)
    data modify storage asset:effect Name set value '{"text":"魂命","color":"dark_aqua"}'
# 説明文 (TextComponentString[])
    data modify storage asset:effect Description set value '{"text":"最大体力に比例して物理与ダメージが上昇する","color":"white"}'
# 効果時間 (int) (default = API || error)
    data modify storage asset:effect Duration set value 400
# スタック (int) (default = API || 1)
    # data modify storage asset:effect Stack set value
# 効果時間の操作方法 (default = API || "replace")
    # data modify storage asset:effect DurationOperation set value
# スタックの操作方法 (default = API || "replace")
    # data modify storage asset:effect StackOperation set value
# 最大効果時間 (int) (default = 2147483647)
    data modify storage asset:effect MaxDuration set value 400
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

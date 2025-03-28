#> asset:effect/0301.soul_light/register
#
# Effectのデータを指定
#
# @within function asset:effect/0301.soul_light/_/register

# ExtendsSafe (boolean) (default = false)
    # data modify storage asset:effect ExtendsSafe set value true
# ID (int)
    data modify storage asset:effect ID set value 301
# 名前 (TextComponentString)
    data modify storage asset:effect Name set value '{"text":"命魂の光","color":"aqua"}'
# 説明文 (TextComponentString[])
    data modify storage asset:effect Description set value ['{"text":"継続的に体力を回復する","color":"white"}']
# 効果時間 (int) (default = API || error)
    data modify storage asset:effect Duration set value 420
# スタック (int) (default = API || 1)
    # data modify storage asset:effect Stack set value
# 効果時間の操作方法 (default = API || "replace")
    data modify storage asset:effect DurationOperation set value "replace"
# スタックの操作方法 (default = API || "replace")
    data modify storage asset:effect StackOperation set value "forceReplace"
# 最大効果時間 (int) (default = 2147483647)
    data modify storage asset:effect MaxDuration set value 420
# 最大スタック (int) (default = 2147483647)
    data modify storage asset:effect MaxStack set value 3
# 悪い効果か否か (boolean)
    data modify storage asset:effect IsBadEffect set value false
# 死亡時のエフェクトの処理 (default = "remove")
    # data modify storage asset:effect ProcessOnDied set value
# 消すのに必要なレベル (int) (default = 1)
    data modify storage asset:effect RequireClearLv set value 3
# エフェクトをUIに表示するか (boolean) (default = true)
    # data modify storage asset:effect Visible set value
# エフェクトのスタックををUIに表示するか (boolean) (default = true)
    # data modify storage asset:effect StackVisible set value

# フィールド
    # data modify storage asset:effect Field.Stack set value 1
    # data modify storage asset:effect Field.Duration set value 1
    data modify storage asset:effect Field.UserID set value -1
    data modify storage asset:effect Field.Heal set value 0
    data modify storage asset:effect Field.Tick set value 20

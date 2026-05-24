#> asset:effect/0357.time_ticker_morning/register
#
# Effectのデータを指定
#
# @within function asset:effect/0357.time_ticker_morning/_/register

# ExtendsSafe (boolean) (default = false)
    # data modify storage asset:effect ExtendsSafe set value true
# ID (int)
    data modify storage asset:effect ID set value 357
# 名前 (TextComponentString)
    data modify storage asset:effect Name set value '{"text":"時刻み・白昼","color":"#ffea96"}'
# 説明文 (TextComponentString[])
    data modify storage asset:effect Description set value ['{"text":"物理耐性と与回復量が上昇する"}']
# 効果時間 (int) (default = API || error)
    # data modify storage asset:effect Duration set value
# スタック (int) (default = API || 1)
    # data modify storage asset:effect Stack set value
# 効果時間の操作方法 (default = API || "replace")
    # data modify storage asset:effect DurationOperation set value
# スタックの操作方法 (default = API || "replace")
    # data modify storage asset:effect StackOperation set value
# 最大効果時間 (int) (default = 2147483647)
    # data modify storage asset:effect MaxDuration set value
# 最大スタック (int) (default = 2147483647)
    data modify storage asset:effect MaxStack set value 1
# 悪い効果か否か (boolean)
    data modify storage asset:effect IsBadEffect set value false
# 死亡時のエフェクトの処理 (default = "remove")
    # data modify storage asset:effect ProcessOnDied set value
# 消すのに必要なレベル (int) (default = 1)
    data modify storage asset:effect RequireClearLv set value 3
# エフェクトをUIに表示するか (boolean) (default = true)
    # data modify storage asset:effect Visible set value
# エフェクトのスタックををUIに表示するか (boolean) (default = true)
    data modify storage asset:effect StackVisible set value false

# フィールド

# 補正関係
    data modify storage asset:effect Field.UUID set value [I;1,3,357,0]
    data modify storage asset:effect Field.Modifier.PhysicalDefense set value 0.1
    data modify storage asset:effect Field.Modifier.Heal set value 0.1
    data modify storage asset:effect Field.Modifier.MagicDefense set value 0.1
    data modify storage asset:effect Field.Modifier.MPHeal set value 0.1

# エンド判定
    data modify storage asset:effect Field.InTheEnd set value false

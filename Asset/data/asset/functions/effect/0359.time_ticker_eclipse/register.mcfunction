#> asset:effect/0359.time_ticker_eclipse/register
#
# Effectのデータを指定
#
# @within function asset:effect/0359.time_ticker_eclipse/_/register

# ExtendsSafe (boolean) (default = false)
    # data modify storage asset:effect ExtendsSafe set value true
# ID (int)
    data modify storage asset:effect ID set value 359
# 名前 (TextComponentString)
    data modify storage asset:effect Name set value '[{"text":"時刻み・日食","color":"#CCCCCC"}]'
# 説明文 (TextComponentString[])
    data modify storage asset:effect Description set value ['{"text":"与ダメージが上昇し、被ダメージが大きく低下するが"}','{"text":"与回復量とMP回復量が低下する"}']
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
    data modify storage asset:effect Field.UUID set value [I;1,3,359,0]
    data modify storage asset:effect Field.Modifier.Day set value {PhysicalDefense:0.1d,Heal:0.1d}
    data modify storage asset:effect Field.Modifier.Night set value {MagicDefense:0.df,MPHeal:0.1d}
    data modify storage asset:effect Field.Modifier.Eclipse set value {Attack:0.1d,Defense:0.2d,Heal:-0.1d,MPHeal:-0.1d}

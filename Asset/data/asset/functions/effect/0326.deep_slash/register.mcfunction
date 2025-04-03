#> asset:effect/0326.deep_slash/register
#
# Effectのデータを指定
#
# @within function asset:effect/0326.deep_slash/_/register

# ExtendsSafe (boolean) (default = false)
    # data modify storage asset:effect ExtendsSafe set value true
# ID (int)
    data modify storage asset:effect ID set value 326
# 名前 (TextComponentString)
    data modify storage asset:effect Name set value '[{"text":"デ","color":"#197af0"},{"text":"ィ","color":"#176feb"},{"text":"ー","color":"#1564e6"},{"text":"プ","color":"#135ae0"},{"text":"ス","color":"#114fdb"},{"text":"ラ","color":"#0f44d6"},{"text":"ッ","color":"#0e3ad1"},{"text":"シ","color":"#0c30cb"},{"text":"ュ","color":"#0a25c6"}]'
# 説明文 (TextComponentString[])
    data modify storage asset:effect Description set value ['{"text":"移動速度とノックバック耐性が極端に上昇し","color":"white"}','{"text":"通過地点に斬撃を残す","color":"white"}']
# 効果時間 (int) (default = API || error)
    data modify storage asset:effect Duration set value 12
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
    data modify storage asset:effect RequireClearLv set value 4
# エフェクトをUIに表示するか (boolean) (default = true)
    # data modify storage asset:effect Visible set value
# エフェクトのスタックををUIに表示するか (boolean) (default = true)
    # data modify storage asset:effect StackVisible set value

# フィールド
    # data modify storage asset:effect Field set value {}

#> asset:effect/0213.reflecting_sky/register
#
#
#
# @within function asset:effect/0213.reflecting_sky/_/register

# ExtendsSafe (boolean) (オプション)
    data modify storage asset:effect ExtendsSafe set value false
# ID
    data modify storage asset:effect ID set value 213
# 名前
    data modify storage asset:effect Name set value '{"text":"映天","color":"#3643FF"}'
# 説明文
    data modify storage asset:effect Description set value ['{"text":"水属性与ダメージが大きく上昇する"}']
# 残り時間 (default = API || error)
    data modify storage asset:effect Duration set value 100
# スタック (default = API || 1)
    # data modify storage asset:effect Stack set value
# 残り時間の操作方法 (default = API || "replace")
    data modify storage asset:effect DurationOperation set value "replace"
# スタックの操作方法 (default = API || "replace")
    data modify storage asset:effect StackOperation set value "replace"
# 最大残り時間 (default = 2147483647)
    # data modify storage asset:effect MaxDuration set value
# 最大スタック (default = 2147483647)
    # data modify storage asset:effect MaxStack set value
# 悪い効果か否か
    data modify storage asset:effect IsBadEffect set value false
# 死亡時のエフェクトの処遇 (default = "remove")
    # data modify storage asset:effect ProcessOnDied set value
# エフェクトを消す際に必要なLv (default = 1)
    data modify storage asset:effect RequireClearLv set value 3
# エフェクトをUIに表示するか (boolean) (default = true)
    # data modify storage asset:effect Visible set value
# エフェクトのスタックををUIに表示するか (boolean) (default = true)
    data modify storage asset:effect StackVisible set value false

# フィールド (本当はこういうのはスタックでやったほうがいい)
    # data modify storage asset:effect Field

#> asset:effect/0113.receive_heal_debuff/register
#
#
#
# @within function asset:effect/0113.receive_heal_debuff/_/register

# ExtendsSafe (boolean) (オプション)
    data modify storage asset:effect ExtendsSafe set value true
# ID
    data modify storage asset:effect ID set value 113
# 名前
    data modify storage asset:effect Name set value '{"text":"被回復量低下"}'
# 説明文
    data modify storage asset:effect Description set value '{"text":"自分が受ける回復量が5%減少する"}'
# 残り時間 (default = API || error)
    # data modify storage asset:effect Duration set value
# スタック (default = API || 1)
    # data modify storage asset:effect Stack set value
# 残り時間の操作方法 (default = API || "replace")
    data modify storage asset:effect DurationOperation set value "replace"
# スタックの操作方法 (default = API || "replace")
    data modify storage asset:effect StackOperation set value "replace"
# 最大残り時間 (default = 2147483647)
    # data modify storage asset:effect MaxDuration set value
# 最大スタック (default = 2147483647)
    data modify storage asset:effect MaxStack set value 100
# 悪い効果か否か
    data modify storage asset:effect IsBadEffect set value true
# 死亡時のエフェクトの処遇 (default = "remove")
    # data modify storage asset:effect ProcessOnDied set value
# エフェクトを消す際に必要なLv (default = 1)
    data modify storage asset:effect RequireClearLv set value 3

#> asset:effect/0202.sheep_blessing/register
#
#
#
# @within function asset:effect/0202.sheep_blessing/_/register

# ExtendsSafe (boolean) (オプション)
    data modify storage asset:effect ExtendsSafe set value true
# ID
    data modify storage asset:effect ID set value 202
# 名前
    data modify storage asset:effect Name set value '{"text":"羊の加護","color":"green"}'
# 説明文
    data modify storage asset:effect Description set value ['{"text":"足元に羊毛の床を生み出す"}']
# 残り時間 (default = API || error)
    data modify storage asset:effect Duration set value 40
# スタック (default = API || 1)
    # data modify storage asset:effect Stack set value
# 残り時間の操作方法 (default = API || "replace")
    data modify storage asset:effect DurationOperation set value "forceReplace"
# スタックの操作方法 (default = API || "replace")
    data modify storage asset:effect StackOperation set value "forceReplace"
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

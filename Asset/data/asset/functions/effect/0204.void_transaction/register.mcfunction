#> asset:effect/0204.void_transaction/register
#
#
#
# @within function asset:effect/0204.void_transaction/_/register

# ExtendsSafe (boolean) (オプション)
    data modify storage asset:effect ExtendsSafe set value true
# ID
    data modify storage asset:effect ID set value 204
# 名前
    data modify storage asset:effect Name set value '{"text":"","color":"dark_purple","bold":true,"with":[{"text":"奈"},{"text":"落","obfuscated":true},{"text":"との契約"}]}'
# 説明文
    data modify storage asset:effect Description set value ['{"text":"契約により絶大な力を得る。"}','{"text":"","with":[{"text":"終了すると、"},{"text":"奈","obfuscated":true},{"text":"落へ引きずり込まれる。"}]}']
# 残り時間 (default = API || error)
    data modify storage asset:effect Duration set value 2400
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
    data modify storage asset:effect ProcessOnDied set value "stopTickUntilRespawn"
# エフェクトを消す際に必要なLv (default = 1)
    data modify storage asset:effect RequireClearLv set value 4

#> asset:effect/0232.soul_fire/register
#
# Effectのデータを指定
#
# @within function asset:effect/0232.soul_fire/_/register

# ExtendsSafe (boolean) (default = false)
    # data modify storage asset:effect ExtendsSafe set value true
# ID (int)
    data modify storage asset:effect ID set value 232
# 名前 (TextComponentString)
    data modify storage asset:effect Name set value '{"text":"魂炎纏","color":"#01A7AC"}'
# 説明文 (TextComponentString[])
    data modify storage asset:effect Description set value ['{"text":"全てを身に纏ったとき、全ての攻撃に魂炎による追撃が発生する。"}','{"text":"火攻撃 +10%","color":"green"}','{"text":"MP回復量 +2%","color":"green"}']
# 効果時間 (int) (default = API || error)
    data modify storage asset:effect Duration set value 2147483647
# スタック (int) (default = API || 1)
    # data modify storage asset:effect Stack set value
# 効果時間の操作方法 (default = API || "replace")
    # data modify storage asset:effect DurationOperation set value
# スタックの操作方法 (default = API || "replace")
    data modify storage asset:effect StackOperation set value "forceReplace"
# 最大効果時間 (int) (default = 2147483647)
    # data modify storage asset:effect MaxDuration set value
# 最大スタック (int) (default = 2147483647)
    data modify storage asset:effect MaxStack set value 4
# 悪い効果か否か (boolean)
    data modify storage asset:effect IsBadEffect set value false
# 死亡時のエフェクトの処理 (default = "remove")
    data modify storage asset:effect ProcessOnDied set value "keep"
# 消すのに必要なレベル (int) (default = 1)
    data modify storage asset:effect RequireClearLv set value 4
# エフェクトをUIに表示するか (boolean) (default = true)
    data modify storage asset:effect Visible set value false
# エフェクトのスタックををUIに表示するか (boolean) (default = true)
    # data modify storage asset:effect StackVisible set value

#> asset:effect/0205.convallatoxin/register
#
# Effectのデータを指定
#
# @within function asset:effect/0205.convallatoxin/_/register

# ExtendsSafe (boolean) (default = false)
    # data modify storage asset:effect ExtendsSafe set value true
# ID (int)
    data modify storage asset:effect ID set value 205
# 名前 (TextComponentString)
    data modify storage asset:effect Name set value '{"text":"コンバラトキシン"}'
# 説明文 (TextComponentString[])
    data modify storage asset:effect Description set value ['{"text":"スズランに含まれる植物性の自然毒の一種"}','{"text":"スズランの根や花に多く含まれており"}','{"text":"接種すると継続的にダメージを受ける"}']
# 効果時間 (int) (default = API || error)
    data modify storage asset:effect Duration set value 160
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
    data modify storage asset:effect IsBadEffect set value true
# 死亡時のエフェクトの処理 (default = "remove")
    # data modify storage asset:effect ProcessOnDied set value
# 消すのに必要なレベル (int) (default = 1)
    # data modify storage asset:effect RequireClearLv set value
# エフェクトをUIに表示するか (boolean) (default = true)
    data modify storage asset:effect Visible set value false
# エフェクトのスタックををUIに表示するか (boolean) (default = true)
    # data modify storage asset:effect StackVisible set value

# フィールド
    data modify storage asset:effect Field.Tick set value 20
    data modify storage asset:effect Field.AppliedFrom set value -1

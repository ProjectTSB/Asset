#> asset:effect/0376.demons_blood/register
#
# Effectのデータを指定
#
# @within function asset:effect/0376.demons_blood/_/register

# ExtendsSafe (boolean) (default = false)
    # data modify storage asset:effect ExtendsSafe set value true
# ID (int)
    data modify storage asset:effect ID set value 376
# 名前 (TextComponentString)
    data modify storage asset:effect Name set value '{"text":"鬼神の血の呪い","color":"#8A0714"}'
# 説明文 (TextComponentString[])
    data modify storage asset:effect Description set value ['{"text":鬼神の返り血によって付与される","color":"white"}','{"text":"与ダメージが極端に上昇するが最大体力が極端に低下する","color":"red"}']
# 効果時間 (int) (default = API || error)
    #data modify storage asset:effect Duration set value
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
    data modify storage asset:effect RequireClearLv set value 3
# エフェクトをUIに表示するか (boolean) (default = true)
    # data modify storage asset:effect Visible set value
# エフェクトのスタックををUIに表示するか (boolean) (default = true)
    data modify storage asset:effect StackVisible set value false

# フィールド
    # data modify storage asset:effect Field set value {}

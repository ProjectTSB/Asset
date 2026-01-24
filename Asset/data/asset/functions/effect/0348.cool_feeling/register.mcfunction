#> asset:effect/0348.cool_feeling/register
#
# Effectのデータを指定
#
# @within function asset:effect/0348.cool_feeling/_/register

# ExtendsSafe (boolean) (default = false)
    # data modify storage asset:effect ExtendsSafe set value true
# ID (int)
    data modify storage asset:effect ID set value 348
# 名前 (TextComponentString)
    data modify storage asset:effect Name set value '{"text":"清涼感","color":"aqua"}'
# 説明文 (TextComponentString[])
    data modify storage asset:effect Description set value ['{"text":"水属性与ダメージが上昇するが","color":"white"}','{"text":"スタックが一定値になるとバフ効果が解除され、移動速度が低下する。","color":"white"}']
# 効果時間 (int) (default = API || error)
    data modify storage asset:effect Duration set value 200
# スタック (int) (default = API || 1)
    # data modify storage asset:effect Stack set value
# 効果時間の操作方法 (default = API || "replace")
    # data modify storage asset:effect DurationOperation set value
# スタックの操作方法 (default = API || "replace")
    data modify storage asset:effect StackOperation set value "add"
# 最大効果時間 (int) (default = 2147483647)
    # data modify storage asset:effect MaxDuration set value
# 最大スタック (int) (default = 2147483647)
    # data modify storage asset:effect MaxStack set value 3
# 悪い効果か否か (boolean)
    data modify storage asset:effect IsBadEffect set value false
# 死亡時のエフェクトの処理 (default = "remove")
    # data modify storage asset:effect ProcessOnDied set value
# 消すのに必要なレベル (int) (default = 1)
    data modify storage asset:effect RequireClearLv set value 3
# エフェクトをUIに表示するか (boolean) (default = true)
    # data modify storage asset:effect Visible set value
# エフェクトのスタックををUIに表示するか (boolean) (default = true)
    # data modify storage asset:effect StackVisible set value

# フィールド
    data modify storage asset:effect Field.UUID set value [I;1,3,348,0]
    data modify storage asset:effect Field.MaxStack set value 3

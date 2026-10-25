#> asset:effect/0342.prayer_amidst_blight/register
#
# Effectのデータを指定
#
# @within function asset:effect/0342.prayer_amidst_blight/_/register

# ExtendsSafe (boolean) (default = false)
    # data modify storage asset:effect ExtendsSafe set value true
# ID (int)
    data modify storage asset:effect ID set value 342
# 名前 (TextComponentString)
    data modify storage asset:effect Name set value '{"text":"穢中の祈り","color":"#8e2c30"}'
# 説明文 (TextComponentString[])
    data modify storage asset:effect Description set value ['{"text":"与ダメージが上昇し、与回復量が減少する","color":"white"}']
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
    # data modify storage asset:effect MaxStack set value 1
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
    data modify storage asset:effect Field.UUID set value [I;1,3,342,0]
    data modify storage asset:effect Field.Modifier.Attack set value 0.02
    data modify storage asset:effect Field.Modifier.Heal set value -0.04

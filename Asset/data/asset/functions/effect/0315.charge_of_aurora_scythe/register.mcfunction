#> asset:effect/0315.charge_of_aurora_scythe/register
#
# Effectのデータを指定
#
# @within function asset:effect/0315.charge_of_aurora_scythe/_/register

# ExtendsSafe (boolean) (default = false)
    # data modify storage asset:effect ExtendsSafe set value true
# ID (int)
    data modify storage asset:effect ID set value 315
# 名前 (TextComponentString)
    data modify storage asset:effect Name set value '[{"text":"チャージ・"},{"text":"オ","color":"#00FFE2"},{"text":"ー","color":"#00ecf4"},{"text":"ロ","color":"#00d9f6"},{"text":"ラ","color":"#00c6f8"},{"text":"サ","color":"#00b2fb"},{"text":"イ","color":"#009ffd"},{"text":"ス","color":"#008bff"}]'
# 説明文 (TextComponentString[])
    data modify storage asset:effect Description set value ['{"text":"チャージ終了時、チャージ段階に比例して斬撃を放つ"}']
# 効果時間 (int) (default = API || error)
    data modify storage asset:effect Duration set value 1
# スタック (int) (default = API || 1)
    # data modify storage asset:effect Stack set value
# 効果時間の操作方法 (default = API || "replace")
    # data modify storage asset:effect DurationOperation set value
# スタックの操作方法 (default = API || "replace")
    # data modify storage asset:effect StackOperation set value
# 最大効果時間 (int) (default = 2147483647)
    # data modify storage asset:effect MaxDuration set value
# 最大スタック (int) (default = 2147483647)
    data modify storage asset:effect MaxStack set value 3
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
    data modify storage asset:effect Field.Charge set value 0

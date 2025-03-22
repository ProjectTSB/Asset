#> asset:effect/0317.aurora_speed/register
#
# Effectのデータを指定
#
# @within function asset:effect/0317.aurora_speed/_/register

# ExtendsSafe (boolean) (default = false)
    # data modify storage asset:effect ExtendsSafe set value true
# ID (int)
    data modify storage asset:effect ID set value 317
# 名前 (TextComponentString)
    data modify storage asset:effect Name set value '[{"text":"オ","color":"#00FFE2"},{"text":"ー","color":"#00f0e5"},{"text":"ロ","color":"#00e1e9"},{"text":"ラ","color":"#00d3ec"},{"text":"リ","color":"#00c4f0"},{"text":"ー","color":"#00b6f4"},{"text":"パ","color":"#00a7f7"},{"text":"ー","color":"#008bff"}]'
# 説明文 (TextComponentString[])
    data modify storage asset:effect Description set value ['{"text":"移動速度が上昇する"}']
# 効果時間 (int) (default = API || error)
    data modify storage asset:effect Duration set value 10
# スタック (int) (default = API || 1)
    # data modify storage asset:effect Stack set value
# 効果時間の操作方法 (default = API || "replace")
    # data modify storage asset:effect DurationOperation set value
# スタックの操作方法 (default = API || "replace")
    # data modify storage asset:effect StackOperation set value
# 最大効果時間 (int) (default = 2147483647)
    # data modify storage asset:effect MaxDuration set value
# 最大スタック (int) (default = 2147483647)
    data modify storage asset:effect MaxStack set value 1
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

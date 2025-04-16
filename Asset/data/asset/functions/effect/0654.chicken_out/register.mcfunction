#> asset:effect/0654.chicken_out/register
#
# Effectのデータを指定
#
# @within function asset:effect/0654.chicken_out/_/register

# ExtendsSafe (boolean) (default = false)
    # data modify storage asset:effect ExtendsSafe set value true
# ID (int)
    data modify storage asset:effect ID set value 654
# 名前 (TextComponentString)
    data modify storage asset:effect Name set value '{"text":"臆病風"}'
# 説明文 (TextComponentString[])
    data modify storage asset:effect Description set value ['{"text":"このままだと、何か良くないことが起こりそうだ","color":"white"}','{"text":正々堂々戦うしかないだろう","color":"white"}']
# 効果時間 (int) (default = API || error)
    data modify storage asset:effect Duration set value 2147483647
# 最大スタック (int) (default = 2147483647)
    data modify storage asset:effect MaxStack set value 1
# 悪い効果か否か (boolean)
    data modify storage asset:effect IsBadEffect set value true
# 死亡時のエフェクトの処理 (default = "remove")
    # data modify storage asset:effect ProcessOnDied set value
# 消すのに必要なレベル (int) (default = 1)
    data modify storage asset:effect RequireClearLv set value 3
# エフェクトをUIに表示するか (boolean) (default = true)
    data modify storage asset:effect Visible set value true
# エフェクトのスタックををUIに表示するか (boolean) (default = true)
    data modify storage asset:effect StackVisible set value false

# フィールド
    # data modify storage asset:effect Field set value {}

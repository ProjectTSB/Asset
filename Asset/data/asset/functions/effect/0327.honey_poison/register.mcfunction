#> asset:effect/0327.honey_poison/register
#
# Effectのデータを指定
#
# @within function asset:effect/0327.honey_poison/_/register

# ExtendsSafe (boolean) (default = false)
    # data modify storage asset:effect ExtendsSafe set value true
# ID (int)
    data modify storage asset:effect ID set value 327
# 名前 (TextComponentString)
    data modify storage asset:effect Name set value '{"text":"ハチミツ毒","color":"#FFBD24"}'
# 説明文 (TextComponentString[])
    data modify storage asset:effect Description set value ['{"text":"継続的に魔法水属性ダメージを受ける"}']
# 効果時間 (int) (default = API || error)
    # data modify storage asset:effect Duration set value 200
# スタック (int) (default = API || 1)
    data modify storage asset:effect Stack set value 1
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
    # data modify storage asset:effect RequireClearLv set value
# エフェクトをUIに表示するか (boolean) (default = true)
    # data modify storage asset:effect Visible set value
# エフェクトのスタックををUIに表示するか (boolean) (default = true)
    # data modify storage asset:effect StackVisible set value

# フィールド
    data modify storage asset:effect Field.Tick set value 20
    data modify storage asset:effect Field.Damage set value 1
    data modify storage asset:effect Field.AdditionalMPHeal set value 1
    data modify storage asset:effect Field.AppliedFrom set value -1

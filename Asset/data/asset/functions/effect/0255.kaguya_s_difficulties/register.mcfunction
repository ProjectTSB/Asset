#> asset:effect/0255.kaguya_s_difficulties/register
#
# Effectのデータを指定
#
# @within function asset:effect/0255.kaguya_s_difficulties/_/register

# ExtendsSafe (boolean) (default = false)
    # data modify storage asset:effect ExtendsSafe set value true
# ID (int)
    data modify storage asset:effect ID set value 255
# 名前 (TextComponentString)
    data modify storage asset:effect Name set value '{"text":"竹取の宝具","color":"#ffffe0","bold":true}'
# 説明文 (TextComponentString[])
    data modify storage asset:effect Description set value ['{"text":"火耐性 +15%","color":"green"}','{"text":"水耐性 +15%","color":"green"}','{"text":"物理耐性 +20%","color":"green"}','{"text":"落下耐性 +25%","color":"green"}']
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
    # data modify storage asset:effect ProcessOnDied set value
# 消すのに必要なレベル (int) (default = 1)
    data modify storage asset:effect RequireClearLv set value 4
# エフェクトをUIに表示するか (boolean) (default = true)
    data modify storage asset:effect Visible set value false
# エフェクトのスタックををUIに表示するか (boolean) (default = true)
    # data modify storage asset:effect StackVisible set value

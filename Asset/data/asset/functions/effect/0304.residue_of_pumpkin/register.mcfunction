#> asset:effect/0304.residue_of_pumpkin/register
#
# Effectのデータを指定
#
# @within function asset:effect/0304.residue_of_pumpkin/_/register

# 継承 (int)
    data modify storage asset:effect Extends append value 191
    function asset:effect/extends
# ID (int)
    data modify storage asset:effect ID set value 304
# 名前 (TextComponentString)
    data modify storage asset:effect Name set value '{"text":"カボチャの怨念","color":"#FFAA00"}'
# 説明文 (TextComponentString[])
    data modify storage asset:effect Description set value ['{"text":"移動速度が上昇し、暗所でも視界が明るくなる"}']
# 効果時間 (int) (default = API || error)
    data modify storage asset:effect Duration set value 600
# 最大スタック (int) (default = 2147483647)
    data modify storage asset:effect MaxStack set value 1
# 悪い効果か否か (boolean)
    data modify storage asset:effect IsBadEffect set value true
# 消すのに必要なレベル (int) (default = 1)
    data modify storage asset:effect RequireClearLv set value 3

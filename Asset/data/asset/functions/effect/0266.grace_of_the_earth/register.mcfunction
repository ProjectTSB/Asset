#> asset:effect/0266.grace_of_the_earth/register
#
# Effectのデータを指定
#
# @within function asset:effect/0266.grace_of_the_earth/_/register

# 継承 (int)
    data modify storage asset:effect Extends append value 84
    function asset:effect/extends
# ID (int)
    data modify storage asset:effect ID set value 266
# 名前 (TextComponentString)
    data modify storage asset:effect Name set value '{"text":"大地の恵み","color":"green"}'
# 効果時間 (int) (default = API || error)
    data modify storage asset:effect Duration set value 300
# スタック (int) (default = API || 1)
    data modify storage asset:effect Stack set value 1

# フィールド
    data modify storage asset:effect Field.HealPer set value 2d

#> asset:effect/0338.jump_spring/register
#
# Effectのデータを指定
#
# @within function asset:effect/0338.jump_spring/_/register

# 継承 (int)
    data modify storage asset:effect Extends append value 192
    function asset:effect/extends
# ID (int)
    data modify storage asset:effect ID set value 338
# 効果時間 (int) (default = API || error)
    data modify storage asset:effect Duration set value 2147483647
# スタック (int) (default = API || 1)
    data modify storage asset:effect Stack set value 2
# 消すのに必要なレベル (int) (default = 1)
    data modify storage asset:effect RequireClearLv set value 3
# エフェクトをUIに表示するか (boolean) (default = true)
    data modify storage asset:effect Visible set value false

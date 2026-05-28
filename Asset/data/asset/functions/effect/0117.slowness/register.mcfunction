#> asset:effect/0117.slowness/register
#
# Effectのデータを指定
#
# @within function asset:effect/0117.slowness/_/register

# 継承 (int)
    data modify storage asset:effect Extends append value 17
    function asset:effect/extends

# ExtendsSafe (boolean) (default = false)
    # data modify storage asset:effect ExtendsSafe set value true
# ID (int)
    data modify storage asset:effect ID set value 117
# 消すのに必要なレベル (int) (default = 1)
    data modify storage asset:effect RequireClearLv set value 3

# フィールド
    data modify storage asset:effect Field.UUID set value 00000001-0000-0003-0000-007500000000

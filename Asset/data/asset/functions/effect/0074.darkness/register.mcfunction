#> asset:effect/0074.darkness/register
#
# Effectのデータを指定
#
# @within function asset:effect/0074.darkness/_/register

# 継承 (int)
    data modify storage asset:effect Extends append value 24
    function asset:effect/extends
# ID (int)
    data modify storage asset:effect ID set value 74
# 消すのに必要なレベル (int) (default = 1)
    data modify storage asset:effect RequireClearLv set value 2

#> asset:effect/0084.regeneration/register
#
# Effectのデータを指定
#
# @within function asset:effect/0084.regeneration/_/register

# 継承 (int)
    data modify storage asset:effect Extends append value 34
    function asset:effect/extends
# ID (int)
    data modify storage asset:effect ID set value 84
# 消すのに必要なレベル (int) (default = 1)
    data modify storage asset:effect RequireClearLv set value 2

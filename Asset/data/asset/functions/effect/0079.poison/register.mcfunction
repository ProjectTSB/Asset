#> asset:effect/0079.poison/register
#
# Effectのデータを指定
#
# @within function asset:effect/0079.poison/_/register

# 継承 (int)
    data modify storage asset:effect Extends append value 29
    function asset:effect/extends
# ID (int)
    data modify storage asset:effect ID set value 79
# 消すのに必要なレベル (int) (default = 1)
    data modify storage asset:effect RequireClearLv set value 2

#> asset:effect/0077.nausea/register
#
# Effectのデータを指定
#
# @within function asset:effect/0077.nausea/_/register

# 継承 (int)
    data modify storage asset:effect Extends append value 27
    function asset:effect/extends
# ID (int)
    data modify storage asset:effect ID set value 77
# 消すのに必要なレベル (int) (default = 1)
    data modify storage asset:effect RequireClearLv set value 2

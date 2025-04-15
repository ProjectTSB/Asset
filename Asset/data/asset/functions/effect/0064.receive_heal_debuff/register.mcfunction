#> asset:effect/0064.receive_heal_debuff/register
#
# Effectのデータを指定
#
# @within function asset:effect/0064.receive_heal_debuff/_/register

# 継承 (int)
    data modify storage asset:effect Extends append value 14
    function asset:effect/extends
# ID (int)
    data modify storage asset:effect ID set value 64
# 消すのに必要なレベル (int) (default = 1)
    data modify storage asset:effect RequireClearLv set value 2

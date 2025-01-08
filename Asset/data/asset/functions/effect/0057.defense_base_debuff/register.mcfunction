#> asset:effect/0057.defense_base_debuff/register
#
# Effectのデータを指定
#
# @within function asset:effect/0057.defense_base_debuff/_/register

# 継承 (int)
    data modify storage asset:effect Extends append value 7
    function asset:effect/extends
# ID (int)
    data modify storage asset:effect ID set value 57
# 消すのに必要なレベル (int) (default = 1)
    data modify storage asset:effect RequireClearLv set value 2

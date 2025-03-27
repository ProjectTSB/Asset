#> asset:mob/0046.clock_of_despair/hurt/
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/alias/46/hurt

# 効果を発動する
    data modify storage api: Argument.Heal set value 9999f
    data modify storage api: Argument.FixedHeal set value true
    function api:heal/modifier
    function api:heal/
# リセット
    function api:heal/reset

# super 呼び出し
    function asset:mob/super.hurt

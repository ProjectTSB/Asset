#> asset:mob/0046.clock_of_despair/hurt/
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/alias/46/hurt

# 効果を発動する
    data modify storage lib: Argument.Heal set value 9999f
    data modify storage lib: Argument.FixedHeal set value true
    function lib:heal/
# リセット
    function lib:heal/reset

# super 呼び出し
    function asset:mob/super.hurt

#> asset:mob/2000.abstract_angel/register
#
# Mobのデータを指定
#
# @within function asset:mob/alias/2000/register

# 他のモブに継承されることを許可するか (boolean) (オプション)
    data modify storage asset:mob ExtendsSafe set value true
# 継承されることを前提とした、抽象的なモブであるかどうか(boolean)
    data modify storage asset:mob IsAbstract set value true
# ID (int)
    data modify storage asset:mob ID set value 2000
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Enemy.Boss"

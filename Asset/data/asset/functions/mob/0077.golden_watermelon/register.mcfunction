#> asset:mob/0077.golden_watermelon/register
#
# Mobのデータを指定
#
# @within function asset:mob/0077.golden_watermelon/_/register

# 継承 (int) (オプション)
    # data modify storage asset:mob Extends append value
    # function asset:mob/extends

# 他のモブに継承されることを許可するか (boolean) (オプション)
    # data modify storage asset:mob ExtendsSafe set value true
# ID (int)
    data modify storage asset:mob ID set value 77
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Projectile"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value false
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set from entity @s

# フィールド
    # data modify storage asset:mob Field set value {}

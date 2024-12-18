#> asset:mob/0390.triple_rabbits/register
#
# Mobのデータを指定
#
# @within function asset:mob/alias/390/register

# 継承(オプション)
    data modify storage asset:mob Extends append value 2000
    function asset:mob/extends
# 他のモブに継承されることを許可するか (boolean) (オプション)
    # data modify storage asset:mob ExtendsSafe set value 
# 継承されることを前提とした、抽象的なモブであるかどうか(boolean)
    data modify storage asset:mob IsAbstract set value false
# ID (int)
    data modify storage asset:mob ID set value 390
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Enemy.Boss"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value false
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set value '[{"text":"異界のウサギ共","color":"#FFFFFF","bold":true}]'
# 体力 (double) (オプション)
    data modify storage asset:mob Health set value 100
# フィールド
    # data modify storage asset:mob Field.myValue set value 

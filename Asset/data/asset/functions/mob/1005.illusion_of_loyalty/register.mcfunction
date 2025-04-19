#> asset:mob/1005.illusion_of_loyalty/register
#
# Mobのデータを指定
#
# @within function asset:mob/alias/1005/register

# 継承
    data modify storage asset:mob Extends append value 106
    function asset:mob/extends
# ID (int)
    data modify storage asset:mob ID set value 1005
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value true
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set value '{"text":"忠誠の幻想","color":"white"}'
# Mobの説明文 (TextComponentString[]) (オプション)
    data modify storage asset:mob Lore set value ['{"text":"とある天使の意志なき幻影","color":"white"}','{"text":"召喚者に強固な護りを与える","color":"white"}']
# 体力 (double) (オプション)
    data modify storage asset:mob Health set value 30000d

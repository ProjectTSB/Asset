#> asset:mob/1005.illusion_of_loyalty/register
#
# Mobのデータを指定
#
# @within function asset:mob/alias/1005/register

# 継承
    data modify storage asset:mob Extends append value 2000
    function asset:mob/extends
# ID (int)
    data modify storage asset:mob ID set value 1005
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value true
# 継承されることを前提とした、抽象的なモブであるかどうか(boolean)
    data modify storage asset:mob IsAbstract set value false
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set value '{"text":"忠誠の幻想","color":"white"}'
# Mobの説明文 (TextComponentString[]) (オプション)
    data modify storage asset:mob Lore set value ['{"text":"とある天使の意志なき幻影","color":"white"}','{"text":"召喚者に強固な護りを与える","color":"white"}']
# 体力 (double) (オプション)
    data modify storage asset:mob Health set value 27000d
# 属性倍率 // 1.0fで100% 最低でも25%は軽減されずに入る
    # 物理倍率 (float) (オプション)
        data modify storage asset:mob Resist.Physical set value 1.0f
    # 魔法倍率 (float) (オプション)
        data modify storage asset:mob Resist.Magic set value 1.0f
    # 火倍率 (float) (オプション)
        data modify storage asset:mob Resist.Fire set value 1.0f
    # 水倍率 (float) (オプション)
        data modify storage asset:mob Resist.Water set value 1.0f
    # 雷倍率 (float) (オプション)
        data modify storage asset:mob Resist.Thunder set value 1.0f

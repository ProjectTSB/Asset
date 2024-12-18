#> asset:mob/0392.ecual_first/register
#
# Mobのデータを指定
#
# @within function asset:mob/alias/392/register

# 継承(オプション)
    data modify storage asset:mob Extends append value 2000
    function asset:mob/extends
# 継承されることを前提とした、抽象的なモブであるかどうか(boolean)
    data modify storage asset:mob IsAbstract set value false
# ID (int)
    data modify storage asset:mob ID set value 392
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Enemy.Boss"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value true
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set value '[{"text":"エクアル","color":"#8CBEFF","bold":true}]'
# Mobの説明文 (TextComponentString[]) (オプション)
    # data modify storage asset:mob Lore set value 
# 体力 (double) (オプション)
    data modify storage asset:mob Health set value 100
#    execute if predicate api:global_vars/difficulty/max/normal run data modify storage asset:mob Health set value 20000
#    execute if predicate api:global_vars/difficulty/min/hard run data modify storage asset:mob Health set value 22000
# ノックバック耐性 (double) (オプション)
    data modify storage asset:mob KnockBackResist set value 1
# 属性倍率 // 1.0fで100% 最低でも25%は軽減されずに入る
    # 物理倍率 (float) (オプション)
        data modify storage asset:mob Resist.Physical set value 1
    # 魔法倍率 (float) (オプション)
        data modify storage asset:mob Resist.Magic set value 0
    # 火倍率 (float) (オプション)
        data modify storage asset:mob Resist.Fire set value 1
    # 水倍率 (float) (オプション)
        data modify storage asset:mob Resist.Water set value 1
    # 雷倍率 (float) (オプション)
        data modify storage asset:mob Resist.Thunder set value 1

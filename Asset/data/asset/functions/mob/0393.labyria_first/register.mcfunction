#> asset:mob/0393.labyria_first/register
#
# Mobのデータを指定
#
# @within function asset:mob/alias/393/register

# 継承(オプション)
    data modify storage asset:mob Extends append value 2000
    function asset:mob/extends
# 継承されることを前提とした、抽象的なモブであるかどうか(boolean)
    data modify storage asset:mob IsAbstract set value false
# ID (int)
    data modify storage asset:mob ID set value 393
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Enemy.Boss"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value true
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set value '[{"text":"ラビリア","color":"#FF87EB","bold":true}]'
# Mobの説明文 (TextComponentString[]) (オプション)
    # data modify storage asset:mob Lore set value 
# 体力 (double) (オプション)
    data modify storage asset:mob Health set value 65000
#    execute if predicate api:global_vars/difficulty/max/normal run data modify storage asset:mob Health set value 20000
#    execute if predicate api:global_vars/difficulty/min/hard run data modify storage asset:mob Health set value 22000
# ノックバック耐性 (double) (オプション)
    data modify storage asset:mob KnockBackResist set value 1
# 属性倍率 // 1.0fで100% 最低でも25%は軽減されずに入る
    # 物理倍率 (float) (オプション)
        data modify storage asset:mob Resist.Physical set value 1.2
    # 魔法倍率 (float) (オプション)
        data modify storage asset:mob Resist.Magic set value 1.2
    # 火倍率 (float) (オプション)
        data modify storage asset:mob Resist.Fire set value 0.5
    # 水倍率 (float) (オプション)
        data modify storage asset:mob Resist.Water set value 0.5
    # 雷倍率 (float) (オプション)
        data modify storage asset:mob Resist.Thunder set value 0.5

#> asset:mob/0410.heiloang/register
#
# Mobのデータを指定
#
# @within function asset:mob/alias/410/register

 #継承 (int) (オプション)
    data modify storage asset:mob Extends append value 2000
    function asset:mob/extends
# 他のモブに継承されることを許可するか (boolean) (オプション)
    # data modify storage asset:mob ExtendsSafe set value
# 継承されることを前提とした、抽象的なモブであるかどうか(boolean)
    data modify storage asset:mob IsAbstract set value false
# ID (int)
    data modify storage asset:mob ID set value 410
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Enemy.Boss"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value false
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set value '{"text":"へいろーん"}'
# Mobの説明文 (TextComponentString[]) (オプション)
    # data modify storage asset:mob Lore set value
# 体力 (double) (オプション)
    data modify storage asset:mob Health set value 10000
# 属性倍率 // 1.0fで100% 最低でも25%は軽減されずに入る
    # 物理倍率 (float) (オプション)
        # data modify storage asset:mob Resist.Physical set value
    # 魔法倍率 (float) (オプション)
        # data modify storage asset:mob Resist.Magic set value
    # 火倍率 (float) (オプション)
        # data modify storage asset:mob Resist.Fire set value
    # 水倍率 (float) (オプション)
        # data modify storage asset:mob Resist.Water set value
    # 雷倍率 (float) (オプション)
        # data modify storage asset:mob Resist.Thunder set value
# フィールド
    # data modify storage asset:mob Field.myValue set value

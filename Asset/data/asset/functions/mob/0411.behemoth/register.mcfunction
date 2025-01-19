#> asset:mob/0411.behemoth/register
#
# Mobのデータを指定
#
# @within function asset:mob/alias/411/register

 #継承 (int) (オプション)
    data modify storage asset:mob Extends append value 2000
    function asset:mob/extends
# 継承されることを前提とした、抽象的なモブであるかどうか(boolean)
    data modify storage asset:mob IsAbstract set value false
# ID (int)
    data modify storage asset:mob ID set value 411
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Enemy.Boss"
# 干渉可能か否か (boolean)
# 現状、複数攻撃判定が動作しないので暫定で干渉可能にしている。修正され次第、falseに戻す
    data modify storage asset:mob Interferable set value true
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set value '{"text":"『焔竜』","color":"#8AB9FF"}'
# Mobの説明文 (TextComponentString[]) (オプション)
    # data modify storage asset:mob Lore set value
# 体力 (double) (オプション)
    data modify storage asset:mob Health set value 50000
# 属性倍率 // 1.0fで100% 最低でも25%は軽減されずに入る
    # 物理倍率 (float) (オプション)
        data modify storage asset:mob Resist.Physical set value 0.8f
    # 魔法倍率 (float) (オプション)
        data modify storage asset:mob Resist.Magic set value 1.0f
    # 火倍率 (float) (オプション)
        data modify storage asset:mob Resist.Fire set value 0.5f
    # 水倍率 (float) (オプション)
        data modify storage asset:mob Resist.Water set value 0.7f
    # 雷倍率 (float) (オプション)
        data modify storage asset:mob Resist.Thunder set value 1.0f
# フィールド
    # data modify storage asset:mob Field.myValue set value

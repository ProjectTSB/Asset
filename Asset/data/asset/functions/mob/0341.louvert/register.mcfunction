#> asset:mob/0341.louvert/register
#
# Mobのデータを指定
#
# @within function asset:mob/alias/341/register

# 継承(オプション)
    data modify storage asset:mob Extends append value 2000
    function asset:mob/extends
# 継承されることを前提とした、抽象的なモブであるかどうか(boolean)
    data modify storage asset:mob IsAbstract set value false
# ID (int)
    data modify storage asset:mob ID set value 341
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Enemy.Boss"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value true
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set value '{"text":"ルヴェルト","color":"#FF9C45"}'
# Mobの説明文 (TextComponentString[]) (オプション)
    data modify storage asset:mob Lore set value ['{"text":"炎の双剣を扱う上級天使。","color":"white"}','{"text":"その者が生み出す爆炎は、すべてを飲み込み、焼き尽くすと言われている。","color":"white"}','{"text":"ちなみに男性でも女性でもない。","color":"white"}']
# 体力 (double) (オプション)
    data modify storage asset:mob Health set value 175000
# 防御力 (double) (オプション) // 被ダメージがある程度大きい場合1ptにつき0.8%カット、小さい場合1ptにつき約4%カット 20pt以上は頭打ち
    data modify storage asset:mob Defense set value 0
# ノックバック耐性 (double) (オプション)
    data modify storage asset:mob KnockBackResist set value 1
# 属性倍率 // 1.0fで100% 最低でも25%は軽減されずに入る
    # 物理倍率 (float) (オプション)
        data modify storage asset:mob Resist.Physical set value 0.9f
    # 魔法倍率 (float) (オプション)
        data modify storage asset:mob Resist.Magic set value 1.2f
    # 火倍率 (float) (オプション)
        data modify storage asset:mob Resist.Fire set value 0.7f
    # 水倍率 (float) (オプション)
        data modify storage asset:mob Resist.Water set value 1.2f
    # 雷倍率 (float) (オプション)
        data modify storage asset:mob Resist.Thunder set value 1f
# フィールド
    # data modify storage asset:mob Field.myValue set value

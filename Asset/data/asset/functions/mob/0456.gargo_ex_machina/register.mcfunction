#> asset:mob/0456.gargo_ex_machina/register
#
# Mobのデータを指定
#
# @within function asset:mob/alias/456/register

# 継承 (int) (オプション)
    data modify storage asset:mob Extends append value 2000
    function asset:mob/extends
# 継承されることを前提とした、抽象的なモブであるかどうか(boolean)
    data modify storage asset:mob IsAbstract set value false
# ID (int)
    data modify storage asset:mob ID set value 456
# Type (string) Wikiを参照
    data modify storage asset:mob Type set value "Enemy.Boss"
# 干渉可能か否か (boolean)
    data modify storage asset:mob Interferable set value false
    data modify storage asset:mob IsForwardTarget set value true
# 名前 (TextComponentString) (オプション)
    data modify storage asset:mob Name set value '{"text":"絡繰仕掛の石像"}'
# Mobの説明文 (TextComponentString[]) (オプション)
    data modify storage asset:mob Lore set value ['{"text":"ほげ"}']
# 体力 (double) (オプション)
    data modify storage asset:mob Health set value 10000
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
# フィールド
    # 石像の初期位置
        data modify storage asset:mob Field.FirstPos.X set value 527.5
        data modify storage asset:mob Field.FirstPos.Y set value 91.0
        data modify storage asset:mob Field.FirstPos.Z set value 836.0
    # 剣叩きつけ
        data modify storage asset:mob Field.Damage.SwordAttack set value {Amount:80.0,Type:"Physical",Element:"None"}
    # 半面焼きビーム
        data modify storage asset:mob Field.Damage.HalfBeam set value {Amount:80.0,Type:"Physical",Element:"None"}
